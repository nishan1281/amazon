<?php
include_once('amazon_clsproduct.php');
include_once('amazon_clsProductManager.php');


//echo $_GET['title'];

$product = new Product();
//print_r($product);

$product->SetBookContent($_GET['content']);
//echo $product->GetSource();

InsertProduct($product);


function InsertProduct($product)
{
    echo "<pre>";
		print_r($product);
	echo "</pre>";
	
	echo "TEST";	
	$manager = new clsProductsManager();	
	echo $manager->InsertProducts($product);
	echo "TEST";
}


?>