<?php

// fonction de connexion bdd
function openConn(){
    $dbHost =   "localhost";        // l'hôte, le serveur de la bdd
    $dbUser =   "admin-php";        // un compte utilisateur de la bdd
                                    // avec au minimum les droit insert, select, delete, update
    $dbPass =   "admin";            // mot de passe du compte utilisateur
    $dbName =   "07-php-mysql";     // le nom de la bdd a interroger

    $conn = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName) 
        or die("La connexion avec la bdd". $dbName ." a échoué : ".$conn->error);
    /* en pdo : 
    $conn = new PDO('mysql:host=localhost;dbname=media-20210630', 'admin-media', 'admin');
    */

    return $conn;
}

// fermetrue de la connexion bdd
function closeConn($conn){
    mysqli_close($conn);
}