<?php

   $db_name = 'mysql:host=202.29.52.60;dbname=dbs_64042970103';
   $user_name = 's64042970103';
   $user_password = 'pwDB@64042970103';

   $conn = new PDO($db_name, $user_name, $user_password);

   if (!function_exists('unique_id')) {
       function unique_id() {
           $str = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
           $rand = array();
           $length = strlen($str) - 1;
           for ($i = 0; $i < 20; $i++) { // ตรวจสอบการใช้งานตัวแปร $i และการใช้ตัวดำเนินการ ++ อย่างถูกต้อง
               $n = mt_rand(0, $length);
               $rand[] = $str[$n];
           }
           return implode($rand);
       }
   }

?>
