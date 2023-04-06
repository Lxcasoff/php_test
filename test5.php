<?php
       include("/var/www/html/lib.php");

       if (file_exists("/var/www/html/users/".$username)) printf("true");
       else printf("false");
       
