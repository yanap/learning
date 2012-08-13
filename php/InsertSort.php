<?php

define("ARRAY_SIZE", 8);

$ary = array( 27, 14, 33, 10, 2, 19,37, 20);

for( $i=1; $i<ARRAY_SIZE; $i++) {
    for( $j=$i; $j>=1 && $ary[$j-1]; $j-- ) {
        $work = $ary[$j];
        $ary[$j] = $ary[$j-1];
        $ary[$j-1] = $work;
    }
}

for( $i=0; $i<ARRAY_SIZE; $i++) {
     echo $ary[$i]." ";
}
printf("\n");


?>
