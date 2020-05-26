/// @description _intersection

test_start("_intersection", "Finds the intersection of arrays");

var arr1 = [1, 2, 3, 4];
var arr2 = [1, 4, 3];
var arr3 = [0, 2];

var test1 = _intersection(arr1, arr2);
var test2 = _intersection(arr1, arr3);
var test3 = _intersection(arr2, arr1);
var test4 = _intersection(arr1, arr2, arr3);

assert_equal(_length(test1), 3);
assert_equal(_length(test2), 1);
assert_equal(_length(test3), 3);
assert_equal(_length(test4), 0);

assert_equal(test1[0], 1);
assert_equal(test1[1], 3);
assert_equal(test1[2], 4);

assert_equal(test2[0], 2);

assert_equal(test3[0], 1);
assert_equal(test3[1], 4);
assert_equal(test3[2], 3);

test_end();