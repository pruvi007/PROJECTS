<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
// use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Session;
class ajax extends Controller
{
    //
    // $val = DB::select('select * from logins');
    // $val = @json($val);
    // return $val;
    public function login_check(Request $req)
    {
    	// echo "<script>console.log( 'Debug Objects: " . $req->str . "' );</script>";
    	$val = DB::select("select * from logins where username='$req->str' ");
    	$data = array('exist'=>0);
	  	if($val)
	  	{
	    	$data['exist'] = 1;
	    	return json_encode($data);
	  	}
	  	return json_encode($data);
    }

    public function login_form_check(Request $req)
    {
    	// echo "<script>console.log( 'Debug Objects: " . $req->str . "' );</script>";
    	$val = DB::select("select * from logins where username='$req->username' and password='$req->password' ");
    	
    	// echo "<script>console.log(".$val.");</script>";

	  	if(count($val)>0)
	  	{
	    	

	  		$blog = DB::select("select time,head,blog from blogs where username='$req->username'");
	  		$blog = json_encode($blog);
	  		// print_r($blog);
	  		// return redirect('/')->with('message', 'Done.');
	  		Session::put('username', $req->username);
	  		Session::put('blogs', $blog);
	    	return redirect('/index');
	  	}
	  	else
	  	{
	  		Session::put('username', $req->username);

	  		return redirect('/login');
	  	}
	  	
    }

    public function insert_blog(Request $req)
    {
    	// echo "<script>console.log( 'Debug Objects: " . $req->str . "' );</script>";

    	// echo $req->head.' '.$req->time;
    	if(sizeof($req->head)>0 && sizeof($req->text)>0)
    	{
    		$val = DB::table('blogs')->insert(
    				['username'=>$req->user,'blog'=>$req->text,'time'=>$req->time,'head'=>$req->head]
    			);
    		if($val)
		  	{
		  		$blog = DB::select("select time,head,blog from blogs where username='$req->user'");
	  			$blog = json_encode($blog);

	  			Session::put('username', $req->user);
	  			Session::put('blogs', $blog);
	  			return redirect('/index');
		  	}
    	}

	  	
	  	else
	  	{
	  		return "<font color='red' size='3'>Error Adding !</font>";
	  	}
	  	
    }

    public function delete_blog(Request $req)
    {
    	// echo "<script>console.log( 'Debug Objects: " . $req->str . "' );</script>";

    	// echo $req->head.' '.$req->time;
    	$whereArray = array('username' => $req->user,'head' => $req->head);
    	$query = DB::table('blogs');

    	foreach($whereArray as $field => $value) {
		    $query->where($field, $value);
		}
		$del = $query->delete();


    	$blog = DB::select("select time,head,blog from blogs where username='$req->user'");
		$blog = json_encode($blog);

		Session::put('username', $req->user);
	  	Session::put('blogs', $blog);
		return redirect('/index');
    }



    // register functions
    public function reg_username(Request $req)
    {
    	// echo "<script>console.log( 'Debug Objects: " . $req->str . "' );</script>";
    	$val = DB::select("select * from logins where username='$req->user' ");
    	$data = array('exist'=>0);
	  	if($val)
	  	{
	    	$data['exist'] = 1;
	    	return json_encode($data);
	  	}
	  	return json_encode($data);
    }

    public function reg_email(Request $req)
    {
    	// echo "<script>console.log( 'Debug Objects: " . $req->str . "' );</script>";
    	$email = $req->email;
    	$valid = 0;
    	if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
		  $valid=1;
		} 

    	$val = DB::select("select * from logins where email='$req->email'");
    	$data = array('email'=>$valid,'present'=>0);
	  	if($val)
	  	{
	    	$data['present'] = 1;
	    	return json_encode($data);
	  	}
	  	return json_encode($data);
    }

    public function reg_password(Request $req)
    {
    	$s = explode(',',$req->pass);
    	$data = array('password'=>0);
    	if($s[0] == $s[1])
    	{
    		$data['password'] = 1;
    		return json_encode($data);
    	}
    	return json_encode($data);
    }

    public function reg_submit(Request $req)
    {
    	
    	$val = DB::table('logins')->insert(
    				['name'=>$req->name,'username'=>$req->user,'email'=>$req->email,'password'=>$req->pass]
    			);
    	
    	if($val)
    	{
    		return "<center><font color='green' size='2'>SuccessFully Added !</font></center>";
    	}
    	else
    	{
    		return "<center><font color='red' size='2'>Error!</font></center>";
    	}
    	
    }

}
