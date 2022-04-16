<?php
include_once('db.php');
$query="select * from Item";
$result=mysql_query($query);
?>

<!DOCTYPE html>
<html>
    <title>
        <head>Amazon(sort of)</head>
    </title>
<body>
    <table align="center" border="1px" style="width:600px; line-height:40px;">
        <tr>
            <th colspan="5"><h2>Products</h2></th>
        </tr>        
        </t>
            <th>ID</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Stock</th>
            <th>System</th>
        </t>
        <?php
            while($rows=mysql_fetch_assoc($result))
            {
        ?>
                <tr>
                    <td><?php echo $rows['ID']; ?></td>
                    <td><?php echo $rows['Product Name']; ?></td> 
                    <td><?php echo $rows['Price']; ?></td> 
                    <td><?php echo $rows['Stock']; ?></td> 
                    <td><?php echo $rows['System']; ?></td> 
                </tr>
        <?php        
            }
        ?>
    </table>

</body>
</html>
