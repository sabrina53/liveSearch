<?php
$q=$_GET['searchstring'];
if($q!=NULL) {
$connection = mysqli_connect('localhost', 'root', 'root', 'wildlife_livesearch');
$sql="SELECT * FROM tbl_animals WHERE animal_name_eng LIKE '".$q."%'";
$result = mysqli_query($connection, $sql);
$numrows = mysqli_num_rows($result);

if($numrows > 0) {
while($row = mysqli_fetch_array($result)) {
 // print "<a href=\"#\" onclick=\"displayInfo(".$row['customer_id'].")\">".$row['customer_lastname'].", ".$row['customer_firstname']."</a>";
 // }

    print "<a href=\"#\" id=\"".$row['animal_id']."\">".'<img src="images/'.$row['animal_thumbs'].'">'.$row['animal_name_eng']."</a>";
 }

}else{
print "No results match your search";
}
}
?>