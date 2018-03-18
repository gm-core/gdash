/// @description _difference

test_start("_difference", "Finds the difference between arrays");

var arr1 = [1, 2, 3, 4];
var arr2 = [0, 2];
var arr3 = [3, 4];

var test1 = _difference(arr1, arr2);
var test2 = _difference(arr1, arr3);
var test3 = _difference(arr1, arr2, arr3);
var test4 = _difference(arr3, arr1);

assert_equal(_length(test1), 3);
assert_equal(_length(test2), 2);
assert_equal(_length(test3), 1);
assert_equal(_length(test4), 0);

assert_equal(test1[0], 1);
assert_equal(test1[1], 3);
assert_equal(test1[2], 4);

assert_equal(test2[0], 1);
assert_equal(test2[1], 2);

assert_equal(test3[0], 1);

test_end();