const express = require('express');
const router = express.Router();

const User = require('../models/User');

router.post('/', function(req, res, next) {
  const trainer = req.body.trainer;
  const userId = req.body.user._id;

  return User.findOne({
    _id: userId,
    'trainer._id': trainer._id
  }).then(resp => {
    if (resp) {
      res.json({ user: resp });
    } else {
      User.findOneAndUpdate(
        { _id: userId },
        {
          $addToSet: {
            trainers: trainer
          }
        },
        { new: true }
      )
        .then(function(resp) {
          res.json({ user: resp });
        })
        .catch(next);
    }
  });
});

router.delete('/', function(req, res, next) {
  const trainer = req.body.trainer;
  const userId = req.body.user._id;

  User.findById(userId).then(function(user) {
    if (!user) {
      return res.sendStatus(401);
    }
    return user
      .deleteTrainers(trainer)
      .then(function() {
        return res.json(user);
      })
      .catch(next);
  });
});

module.exports = router;
