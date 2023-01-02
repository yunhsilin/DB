<?php
    $db_host = "localhost";
    $db_username = "root";
    $db_password = "1234";
    $db_name = "pet";

    $db_link = @new mysqli($db_host, $db_username, $db_password, $db_name);

    if ($db_link -> connect_erroe != ""){
        echo "資料庫連結失敗!";
    }else{
        $db_link -> query("SET NAMES 'utf8'");
    }
?>