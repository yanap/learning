<?php

define("ARRAY_SIZE", 8); //配列の要素数

$ary = array(6, 9, 10, 18, 19, 27, 35, 53); //ソート済みの配列
$low = 0; //探索範囲の下限要素の添字
$high = ARRAY_SIZE - 1; //探索範囲の上限要素の添字
$mid = NULL; //探索範囲の中央要素の添字
$key = NULL; //目的の値

print_r($ary);
echo "探索する値を入力して下さい\n";
$input = fscanf(STDIN, "%d" );
$key = $input[0];
//print_r($input);

while( $low <= $high ) { //下限位置の方が上限の位置を超えたら、目的の値は存在しない
    $mid = ($low + $high) / 2; //配列の中央位置を計算
    $mid = intval($mid);
    echo $ary[$mid]." ";
    if( $ary[$mid] == $key ) { //目的の値と一致
        echo "\n見つかりました\n";
        exit;
    } else if( $ary[$mid] < $key ) { //目的の値の方が大きい
        $low = $mid + 1; //下限位置を変更する
    } else {
        $high = $mid - 1; //上限位置を変更する
    }
}
echo "見つかりませんでした\n";

?>
