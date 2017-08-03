<?php

$BDD = new PDO('mysql:hostname=localhost;dbname=bdd_portfolio;charset=utf8','root','root');

$query =$BDD->query("
SELECT *
FROM users
	");
$fetch_query = $query->fetchAll(PDO::FETCH_ASSOC);

?>