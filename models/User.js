const mongoose = require('mongoose');

const UserSchema = mongoose.Schema({
  trainers: {
    type: Array
  },
  name: {
    type: String,
    required: true
  },
  email: {
    type: String,
    required: true,
    unique: true
  },
  password: {
    type: String,
    required: true
  },
  date: {
    type: Date,
    default: Date.now
  }
});

UserSchema.methods.deleteTrainers = function(trainer) {
  this.trainers.remove(trainer);
  return this.save();
};

module.exports = mongoose.model('user', UserSchema);
