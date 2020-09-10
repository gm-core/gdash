/// @description _unzip

test_start("_unzip", "Ungroups a zipped array");

var arr1 = [1, 2, 3];
var arr2 = [true, false];
var arr3 = _zip(arr1, arr2);

var test = _unzip(arr3);

assert_equal(array_height_2d(test), 2);

assert_equal(test[0, 0], 1);
assert_equal(test[0, 1], 2);
assert_equal(test[0, 2], 3);

assert_equal(test[1, 0], true);
assert_equal(test[1, 1], false);
assert_equal(test[1, 2], 0);

test_end();