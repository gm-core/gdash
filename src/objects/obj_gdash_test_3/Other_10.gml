/// @description _slice

test_start("_slice", "Slices an array");

var arr = _arrayOf(1, 2, 3);

var test1 = _slice(arr, 0);
var test2 = _slice(arr, 1, 2);
var test3 = _slice(arr, 1, 3);


assert_equal(_length(test1), 3);
assert_equal(_length(test2), 1);
assert_equal(_length(test3), 2);

assert_equal(test1[0], 1);
assert_equal(test1[1], 2);
assert_equal(test1[2], 3);

assert_equal(test2[0], 2);

assert_equal(test3[0], 2);
assert_equal(test3[1], 3);

test_end();