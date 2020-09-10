/// @description _difference_by

test_start("_difference_by", "Finds the difference between arrays using an iteratee");

var arr1 = [1, 2.5, 3, 4.5];
var arr2 = [0.9, 2];
var arr3 = [3.9, 4.25];

var test1 = _difference_by(arr1, arr2, native_floor);
var test2 = _difference_by(arr1, arr3, native_floor);
var test3 = _difference_by(arr1, arr2, arr3, native_floor);
var test4 = _difference_by(arr3, arr1, native_floor);

assert_equal(_length(test1), 3);
assert_equal(_length(test2), 2);
assert_equal(_length(test3), 1);
assert_equal(_length(test4), 0);

assert_equal(test1[0], 1);
assert_equal(test1[1], 3);
assert_equal(test1[2], 4.5);

assert_equal(test2[0], 1);
assert_equal(test2[1], 2.5);

assert_equal(test3[0], 1);

test_end();