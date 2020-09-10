/// @description _chunk

test_start("_chunk", "Splits an array into groups");

var arr = [1, 2, 3, 4];

var test1 = _chunk(arr, 0);
var test2 = _chunk(arr, 1);
var test3 = _chunk(arr, 2);
var test4 = _chunk(arr, 3);

assert_equal(array_length(test1), 0);
assert_equal(array_length(test2), 4);
assert_equal(array_length(test3), 2);
assert_equal(array_length(test4), 2);

assert_equal(array_length(test2[0]), 1);
assert_equal(array_length(test3[0]), 2);
assert_equal(array_length(test4[0]), 3);
assert_equal(array_length(test4[1]), 1);

assert_equal(test2[0][0], 1);
assert_equal(test2[1][0], 2);
assert_equal(test2[2][0], 3);
assert_equal(test2[3][0], 4);

assert_equal(test3[0][0], 1);
assert_equal(test3[0][1], 2);
assert_equal(test3[1][0], 3);
assert_equal(test3[1][1], 4);

assert_equal(test4[0][0], 1);
assert_equal(test4[0][1], 2);
assert_equal(test4[0][2], 3);
assert_equal(test4[1][0], 4);

test_end();