/// @description _fill

test_start("_fill", "Fills elements of an array with a given value");

var arr = [1, 2, 3];

_fill(arr, 0);

assert_equal(arr[0], 0);
assert_equal(arr[1], 0);
assert_equal(arr[2], 0);

_fill(arr, 1, 1, 3);

assert_equal(arr[0], 0);
assert_equal(arr[1], 1);
assert_equal(arr[2], 1);

_fill(arr, 2, 0, 1);

assert_equal(arr[0], 2);
assert_equal(arr[1], 1);
assert_equal(arr[2], 1);

test_end();