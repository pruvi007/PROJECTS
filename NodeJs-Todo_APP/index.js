
var express = require('express');
var app = express();

var todoController = require('./controllers/todoController');

// set up template engine
app.set('view engine','ejs');

// set up static file
app.use(express.static('./node-js-playlist/public'));

// fire the controller
todoController(app);

// listen to port 3000
app.listen(3000);
console.log('Server started at 127.0.0.1:3000');