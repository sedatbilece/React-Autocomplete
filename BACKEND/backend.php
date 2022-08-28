<?php 
header("Access-Control-Allow-Origin: *");

try{
    $db = new PDO ('mysql:host=localhost;dbname=autocomplete', 'root', '1327');


}
catch(Exception $e){
    echo $e->getMessage();
}


$query =  isset($_GET['query']) ? $_GET['query'] : '';

if($query){ 

  $rows =   $db->query('select * from animals where title like "%'.$query.'%"')->fetchAll(PDO::FETCH_OBJ);

  if($rows){
    echo json_encode($rows);
  }
  
}




?>