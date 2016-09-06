<?php
error_reporting(0);
include_once('clsproduct.php');
include_once('databaseHelper.php');

class clsProductsManager{
	public $DataBaseHelper=NULL;
	
	public static function InsertProducts($ProductsObject){
		
		
		//$DataBaseHelper=new DataAccessHelper();
		//$sql ="Test";
		$sql="INSERT INTO `product`(`product_id`,`source`,`type`, `title`, `rating`,`content`,`author`,`edition_and_price`,`book_details`,`img_url`,`is_ok`,`look_inside_text`)
		VALUES ('".NULL ."', '".safe($ProductsObject->GetSource())."', '".safe($ProductsObject->GetType())."', '".safe($ProductsObject->GetTitle())."', '".safe($ProductsObject->GetRating())."', '".safe($ProductsObject->GetContent())."', '".safe($ProductsObject->GetAuthor())."', '".safe($ProductsObject->SetEditionAndPrice())."', '".safe($ProductsObject->GetBookDesc())."','".safe($ProductsObject->GetImgUrl())."', '".safe($ProductsObject->GetIsOk())."', '".safe($ProductsObject->GetLookInsideText())."')";

		echo "</br>".$sql;		
		$dataaccessHelper = new DataaccessHelper();
		
		return $dataaccessHelper->ExecuteInsertReturnID($sql);		
	}

}

	function safe($value){
		return mysql_real_escape_string($value);
	}


?>
