/// @description _drop_right

test_start("_drop_right", "Drops elements from the end of an array");

var arr = [1, 2, 3];

var test1 = _drop_right(arr, 1);
var test2 = _drop_right(arr, 2);
var test3 = _drop_right(arr, 3);

assert_equal(_length(test1), 2);
assert_equal(_length(test2), 1);
assert_equal(_length(test3), 0);

assert_equal(test1[0], 1);
assert_equal(test1[1], 2);

assert_equal(test2[0], 1);

test_end();