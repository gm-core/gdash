/// @description _without

test_start("_without", "Creates an array from a given array excluding certain values");

var arr = [1, 2, 3];

var test1 = _without(arr, 0);
var test2 = _without(arr, 2);
var test3 = _without(arr, 1, 3, 5);
var test4 = _without(test3, 2);

assert_equal(_length(test1), 3);
assert_equal(_length(test2), 2);
assert_equal(_length(test3), 1);
assert_equal(_length(test4), 0);

assert_equal(test1[0], 1);
assert_equal(test1[1], 2);
assert_equal(test1[2], 3);

assert_equal(test2[0], 1);
assert_equal(test2[1], 3);

assert_equal(test3[0], 2);

test_end();