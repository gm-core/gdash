/// @description _zip

test_start("_zip", "Groups elements of an array");

var arr1 = [1, 2, 3];
var arr2 = [true, false, true];
var arr3 = [2, 4];

var test = _zip(arr1, arr2, arr3);

assert_equal(array_length(test), 3);

assert_equal(test[0, 0], 1);
assert_equal(test[0, 1], true);
assert_equal(test[0, 2], 2);

assert_equal(test[1, 0], 2);
assert_equal(test[1, 1], false);
assert_equal(test[1, 2], 4);

assert_equal(test[2, 0], 3);
assert_equal(test[2, 1], true);

test_end();