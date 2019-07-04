const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');
const { check, validationResult } = require('express-validator/check');
const auth = require('../middleware/auth');

const User = require('../models/User');
const Trainer = require('../models/Trainer');

router.get('/', (req, res, next) => {
  Trainer.find()
    .exec()
    .then(docs => {
      console.log(docs);
      if (docs.length >= 0) {
        res.status(200).json(docs);
      } else {
        res.status(404).json({
          message: 'No entries found'
        });
      }
    })
    .catch(err => {
      console.log(err);
      res.status(500).json({
        error: err
      });
    });
});

router.post('/', (req, res, next) => {
  const trainer = new Trainer({
    _id: new mongoose.Types.ObjectId(),
    name: req.body.name,
    description: req.body.description,
    cost: req.body.cost,
    gender: req.body.gender,
    images: req.body.images,
    colors: req.body.colors,
    sizes: req.body.sizes,
    comments: req.body.comments,
    review: req.body.review
  });
  trainer
    .save()
    .then(result => {
      console.log(result);
      res.status(201).json({
        message: 'Handling POST requests to /trainers',
        createdTrainer: result
      });
    })
    .catch(err => {
      console.log(err);
      res.status(500).json({
        error: err
      });
    });
});

router.get('/:trainerId', (req, res, next) => {
  const id = req.params.trainerId;
  Trainer.findById(id)
    .exec()
    .then(doc => {
      console.log('From database', doc);
      if (doc) {
        res.status(200).json(doc);
      } else {
        res
          .status(404)
          .json({ message: 'No valid entry found for provided ID' });
      }
    })
    .catch(err => {
      console.log(err);
      res.status(500).json({ error: err });
    });
});

router.patch('/:trainerId', (req, res, next) => {
  const id = req.params.productId;
  const updateOps = {};
  for (const ops of req.body) {
    updateOps[ops.propName] = ops.value;
  }
  Product.update({ _id: id }, { $set: updateOps })
    .exec()
    .then(result => {
      console.log(result);
      res.status(200).json(result);
    })
    .catch(err => {
      console.log(err);
      res.status(500).json({
        error: err
      });
    });
});

router.delete('/:trainerId', (req, res, next) => {
  const id = req.params.trainerId;
  Trainer.remove({ _id: id })
    .exec()
    .then(result => {
      res.status(200).json(result);
    })
    .catch(err => {
      console.log(err);
      res.status(500).json({
        error: err
      });
    });
});

module.exports = router;
