<?php

$x = array(9, 4, 6, 2, 1, 8, 0, 3, 7, 5);
define("NUM_DATA", 10);

function BubSort( $x, $n) {
    $c = array();
    for( $i = 0; $i < $n - 1; $i++ ) {
        //echo $i."\n";
        for( $j = $n - 1; $j > $i; $j-- ) {
        //echo $j." ";
            if( $x[$j - 1] > $x[$j] ) {
                $c[$i][$j]["t"] = $x[$j - 1].">".$x[$j];
                $temp = $x[$j];
                $x[$j] = $x[$j - 1];
                $x[$j - 1] = $temp;
            }
                $c[$i][$j]["f"] = $x[$j - 1].">".$x[$j];
        }
        ShowData($x, NUM_DATA);
    }
        print_r($c);
    return $x;
}

function ShowData( $x, $n) {
   for( $i = 0; $i< $n; $i++)  {
       echo $x[$i];
   }
   echo "\n";
}

echo "before sort\n";
ShowData($x, NUM_DATA);
echo "\n";
$a = BubSort($x, NUM_DATA);
echo "\nafter sort\n";
ShowData($a, NUM_DATA);

print_r($c);

?>
