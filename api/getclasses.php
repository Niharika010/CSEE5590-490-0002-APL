<?php

require "sql.php";



try {

    $stmt = $conn->prepare("SELECT * FROM `classes` where career = :career" ); 
    
    $stmt->execute(array('career' => $_GET['id']));

    // set the resulting array to associative
    $result= $stmt->fetchAll(PDO::FETCH_ASSOC);
    $resultJSON = json_encode($result);

    echo  $resultJSON ;

}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}




?>