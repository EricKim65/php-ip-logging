
<?php
$dbname = 'join300_db';
echo "converting from utf9mb4 to utf8..... </br>";
mysql_connect('localhost', 'join300_db', 'Yy5KsFGDlKD', 'join300_db');
// you may not see message below in php7 code, you have to convert this code in php7 format 
echo "database connected .....</br>";

mysql_query("ALTER DATABASE `$dbname` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci");
$result = mysql_query("SHOW TABLES FROM `$dbname`");
while($row = mysql_fetch_row($result)) {
 $query = "ALTER TABLE {$dbname}.`{$row[0]}` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci";
 mysql_query($query);
 $query = "ALTER TABLE {$dbname}.`{$row[0]}` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci";
 mysql_query($query);
}
echo 'All the tables have been converted successfully';
?>