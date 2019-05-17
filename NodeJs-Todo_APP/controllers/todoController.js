

var data = [{item:"get milk"},{item:"Get Groceries"}];
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({extended: false});
var mongoose = require('mongoose');

// connect to DB (hosted at mongodb)
// mongoose.connect(mongodb+srv://praveen:pagal.com123@cluster0-t5btj.mongodb.net/test?retryWrites=true);

// create a schema
// var todoSchema = new mongoose.Schema({
// 	item:String;
// });
// var Todo = mongoose.model('Todo',todoSchema);

module.exports = function(app){

	app.get('/todo',function(req,res){
		// get data from mongodb
		// Todo.find({},function(err,data){
		// 	if (err) throw err;
		// 	res.render('todo',{todos:data});
		// });
		res.render('todo',{todos:data});


	});

	app.post('/todo',urlencodedParser, function(req,res){
		console.log(req.body);
		// var newTodo = Todo(req.body).save(function(err,data){
		// 	if(err) throw err;
		// 	res.json(data);
		// });
		data.push(req.body);
		res.json(data);

	});

	app.delete('/todo/:item',function(req,res){
		// Todo.find({item:req.params.item.replace(/\-/g," ")}).remove(function(err,data){
		// 	if(err) throw err;
		// 	res.json(data);
		// });
		data = data.filter(function(todo){
			return todo.item.replace(/ /g,'-') !== req.params.item;
		});
		res.json(data);

	});
}
