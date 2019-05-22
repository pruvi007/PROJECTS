<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/test', function () {
    return view('test');
});

Route::get('/index', function () {
	if(session('username'))
	{
		return view('bounty/index',['username'=>session('username'),'blogs'=>session('blog')]);
	}
	else
	{
		return redirect('/login');
	}
	
	
	
});
Route::get('/login', function () {
	if(session('username'))
	{
		return redirect('/index');
	}
	
	else
	{
		return view('bounty/login');
	}
	
    
});
Route::get('/register', function () {
    return view('bounty/register');
});

Route::get('/logout', function () {
	Session::flush();
    return redirect('/login');
});

Route::get('/buttonf', function () {
    return view('buttonf');
});


Route::post('/delete_blog','ajax@delete_blog');
Route::post('/login_check','ajax@login_check');
Route::post('/login_form_check','ajax@login_form_check');
Route::post('/insert_blog','ajax@insert_blog');
Route::post('/reg_username','ajax@reg_username');
Route::post('/reg_email','ajax@reg_email');
Route::post('/reg_password','ajax@reg_password');
Route::post('/reg_submit','ajax@reg_submit');


Route::get('/php', function() {
   return response()->json([
    'stuff' => phpinfo()
   ]);
});
	// if(Request::ajax())
	// {
	// 	$val = DB::select('select * from logins');
	//   	$val = json_encode($val);
	//     return $val;
	// }
    





