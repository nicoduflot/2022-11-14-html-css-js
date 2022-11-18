<?php
include './sql.php';
$link = openConn();

// écrire la requête sql
$sql = "
SELECT 
    `m`.`id`, `m`.`titre`, `m`.`resume`, 
    `m`.`date_creation`, `m`.`fichier`
FROM 
    `media` `m`";

$results = mysqli_query($link, $sql);

$emparray = array();
while ($row = mysqli_fetch_assoc($results)) {
    $emparray[] = $row;
}
//var_dump($emparray);
echo json_encode($emparray, JSON_INVALID_UTF8_SUBSTITUTE);

closeConn($link);
