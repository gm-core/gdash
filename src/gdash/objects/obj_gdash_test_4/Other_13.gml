/// @description _drop

test_start("_drop", "Drops elements from the beginning of an array");

var arr = [1, 2, 3];

var test1 = _drop(arr, 1);
var test2 = _drop(arr, 2);
var test3 = _drop(arr, 3);

assert_equal(_length(test1), 2);
assert_equal(_length(test2), 1);
assert_equal(_length(test3), 0);

assert_equal(test1[0], 2);
assert_equal(test1[1], 3);

assert_equal(test2[0], 3);

test_end();