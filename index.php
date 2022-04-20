<?php
include 'backend.php'; //grabs the "connecting to database" file

$result = $db->query("SELECT * FROM Console"); //query specified table

$all = $result->fetchALL();
$col = $all[0];

$columns = array();

echo "<pre>";
foreach($col AS $key=>$value)
{
    if(is_string($key))
    {
        $columns[] = $key;
    }
}
//displays table
echo "<table align='center' border ='1' style='width:600; line-height:1;'>";
foreach($columns AS $value)
{
    echo "<th>$value</th>";
}

for($x=0;$x<count($all);$x++){
    echo "<tr>";
        for($y=0;$y<count($columns);$y++){
            echo "<td>".$all[$x][$y]."</td>";
        }
    echo "</tr>";
}
?>