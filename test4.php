<?php
     include("/var/www/html/lib.php");
    
     if (strlen($username) < 4 || strlen($username) > 32) printf("true");
     else printf("false");

