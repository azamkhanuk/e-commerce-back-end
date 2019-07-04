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
  colors: [
    {
      type: String
    }
  ],
  sizes: [
    {
      type: Number
    }
  ],
  comments: [
    {
      type: String
    }
  ],
  review: {
    type: Number
  }
});

module.exports = mongoose.model('trainer', TrainerSchema);
