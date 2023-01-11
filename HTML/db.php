<?php
session_start();
require_once 'DB.php';

$dsn = 'pgsql://postgres:postgres@127.0.0.1/pet';

$db = DB::connect($dsn);
if (PEAR::isError($db)) {
    die($db->getMessage());
}

?>
