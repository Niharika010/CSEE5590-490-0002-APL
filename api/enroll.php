<?php

require "sql.php";



try {

    $stmt = $conn->prepare("Update `classes` set seats_taken = seats_taken + 1 where id = :id" ); 
    
    $stmt->execute(array('id' => $_POST['id']));

    
    echo  'success' ;

}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}




?>