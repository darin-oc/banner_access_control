<?php

mysql_connect("localhost","root","password") or die ("could not search");
mysql_select_db("user_access") or die ("could not find db!");
$output = '';

//collect
if(isset($_POST['search']))
{
  $searchq = $_POST ['search'];
  $searchq = preg_replace("#[^0-9a-z]#i","",$searchq);

//search database
$query = mysql_query("SELECT * FROM objects WHERE id LIKE '%searchq%' OR form LIKE '%searchq%'") or die("could not search!");
$count = mysql_num_rows($query);


if($count == 0)
{

	$output = 'There was no search results!';
}else{
	//collects to row and put into a query
	while($row = mysql_fetch_array ($query)){
		$id = $row['id'];
		$form = $row['form'];

		//information collect back
		$output .= '<div> ' .$id.'  '.$form.'</div>;
	}
}
}

?>