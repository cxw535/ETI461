<?php
//try{
    $db = NEW PDO('mysql:host=localhost;dbname=project','root','mysql');
//} 
//catch(PDOException $e){
//   die($e->getMessage());
//}

if(isset($_POST['getSystem'])) {
    //echo "<option>Test</option>";
    $getSystem = $db->prepare("SELECT * FROM Console");
    $getSystem->execute();

    echo "<option>Select System</option>";
    while($rows = $getSystem->fetch()) {
        $Console_ID = $rows['Console_ID'];
        $system = $rows['System'];

        echo "<option value = '$Console_ID'>$system</option>";
    }
}

if(isset($_POST['system'])) {
    $system = $_POST['system']; 
    
    $getItems = $db->prepare("SELECT * FROM Item WHERE SystemID = ?");
    $getItems->execute([$system]);

    echo "<option>Select Item</option>";
    while($rows = $getItems->fetch()) {
        //$Console_ID = $rows['Console_ID'];
        
        $itemID = $rows['ItemID'];
        $name = $rows['Name'];

        echo "<option value='$itemID'>$name</option>";
    }
}
?>