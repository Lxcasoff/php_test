<?php
        include("/var/www/html/lib.php");

        $ret1 = create_user("", "!@#$%^&*()_+");
        $ret2 = create_user("!@#$%^&*()_+", "");
        $ret3 = create_user("!@#$%^&*()_+", "!@#$%^&*()_+");
        $ret4 = create_user("username", "M3g4P@sSw0rdYZGAJEG12312412##");

        if($ret1 == 1 && $ret2 == 1 && $ret3 == 1 && $ret4 == 0) printf("true");
        else printf("false");

