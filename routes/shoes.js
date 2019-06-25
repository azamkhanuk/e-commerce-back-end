const express = require('express');
const router = express.Router();

// @route GET api/shoes
// @desc Get all shoes
// @access Public

router.get('/', (req, res) => {
  res.send('Get all shoes');
});

module.exports = router;
