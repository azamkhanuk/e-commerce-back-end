const express = require('express');
const connectDB = require('./config/db');
const cors = require('cors');
const app = express();

//! Cors

app.use(cors());

app.get('/api', function(req, res, next) {
  res.json({ msg: 'This is CORS-enabled for all origins!' });
});

app.listen(80, function() {
  console.log('CORS-enabled web server listening on port 80');
});

//! Connect Database
connectDB();

//! Init Middleware
app.use(express.json({ extended: false }));

app.get('/', (req, res) => res.json({ msg: 'Welcome to the Trainer API...' }));

//! Define Routes
app.use('/api/users', require('./routes/users'));
app.use('/api/auth', require('./routes/auth'));
app.use('/api/trainers', require('./routes/trainers'));
app.use('/api/fav', require('./routes/fav'));

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => console.log(`Server started on port ${PORT}`));
