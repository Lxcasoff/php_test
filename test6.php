<?php
    include("/var/www/html/lib.php");

    if (!preg_match("#[0-9]+#", $password) || !preg_match("#[a-zA-Z]+#", $password)) printf("true");
    else printf("false");
    
