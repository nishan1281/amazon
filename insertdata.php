<?php
include_once('clsproduct.php');
include_once('clsProductManager.php');


//echo $_GET['title'];

$product = new Product();
//print_r($product);

$product->SetSource("NA");
//echo $product->GetSource();
$product->SetType("books");
//echo $product->GetSource();
$product->SetTitle($_GET['title']);
//echo $product->GetSource();
$product->SetRating($_GET['rating']);
//echo $product->GetSource();
$product->SetContent($_GET['content']);//prices
//echo $product->GetSource();
$product->SetAuthor($_GET['author']);
//echo $product->GetSource();
$product->SetEditionAndPrice("Edition Price");
//echo $product->GetSource();
$product->SetBookDesc($_GET['description']);   // this will get the product details/books details in ths case
//echo $product->GetSource();
$product->SetImgUrl($_GET['img_url']);
//echo $product->GetSource();
$product->SetBookDetails($_GET['details']);
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