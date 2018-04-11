<?php
//include config
require('../func/config.php');

//log user out
$user->logout();
//header('Refresh: 0');
header('Location: ../index.php');
exit;
?>
