<?php 

class Product{

private $productid;
private $source;
private $type;	
private $title;
private $content;
private $rating;
private $author;
private $editionAndprice;
private $book_desc;
private $book_details;
private $img_url;
private $is_ok;

	public function SetProductID($productid){
		$this->productid=$productid;
	}
	public function GetProductID(){
		return $this->pdocuct_id;
	}

	public function Test($value)
	{
			echo "Hello sohel".$value;
	}


	public function SetSource($source){
		$this->source=$source;
	}
	public function GetSource(){
		return $this->source;
	}

	public function SetType($type){
		$this->type=$type;
	}
	public function GetType(){
		return $this->type;
	}
		
	public function SetTitle($title){
		$this->title=$title;
	}
	public function GetTitle(){
		return $this->title;
	}

	public function SetRating($rating){
		$this->rating=$rating;
	}
	public function GetRating(){
		return $this->rating;
	}

	public function SetContent($content)
	{
		$this->content =$content;
	}
	public function GetContent()
	{
		return $this->content;
	}

	public function SetAuthor($value)
	{
		$this->author =$value;
	}
	public function GetAuthor()
	{
		return $this->author;
	}

	public function SetEditionAndPrice($value){
		$this->editionAndprice=$value;
	}
	public function GetEditionAndPrice(){
		return $this->editionAndprice; 
	}

	public function SetBookDesc($value){
		return $this->book_desc=$value;
	}
	public function GetBookDesc(){
		return $this->book_desc;

	}

	//book_details
	public function SetBookDetails($book_details){
		return $this->book_details=$book_details;
	}
	public function GetBookDetails(){
		return $this->book_details;

	}

	public function SetImgUrl($img_url){
		$this->img_url=$img_url;
	}
	public function GetImgUrl(){
		return $this->img_url;
	}

	public function SetIsOk($is_ok){
		$this->is_ok=$is_ok;
	}
	public function GetIsOk(){
		return $this->is_ok;
}


}

?>