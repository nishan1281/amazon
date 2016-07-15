<?php
//error_reporting(0);
include_once('databaseHelper.php');

$link = $_GET['url'];

echo $link;
//echo $product->GetSource();

echo InsertLink($link, $_GET['category'], $_GET['bookName']);


function InsertLink($value, $categoryName, $title)
{
  
  $sql="INSERT INTO `url`(`url_id`, `value`, `category`, `bookName`) VALUES ('".NULL ."', '".safe($value)."','".safe($categoryName)."','".safe($title)."')";
  echo $sql;
  $dataaccessHelper = new DataaccessHelper();
  return $dataaccessHelper->ExecuteInsertReturnID($sql);		
}

function safe($value){
	return mysql_real_escape_string($value);
}

?>