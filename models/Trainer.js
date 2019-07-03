const mongoose = require('mongoose');

const TrainerSchema = mongoose.Schema({
  name: {
    type: String
  },
  description: {
    type: String
  },
  cost: {
    type: Number
  },
  gender: {
    type: String
  },
  images: [
    {
      type: String
    }
  ],
  sizes: [
    {
      type: Number
    }
  ]
});

module.exports = mongoose.model('trainer', TrainerSchema);
