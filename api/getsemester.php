<?php

require "sql.php";



try {

    $stmt = $conn->prepare("SELECT * FROM `semester` where education_id = :education_id" ); 
    
    $stmt->execute(array('education_id' => $_GET['id']));

    // set the resulting array to associative
    $result= $stmt->fetchAll(PDO::FETCH_ASSOC);
    $resultJSON = json_encode($result);

    echo  $resultJSON ;

}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}




?>