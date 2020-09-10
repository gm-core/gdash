/// @description _union

test_start("_union", "Finds the union of arrays");

var arr1 = [1, 2, 3];
var arr2 = [3, 1, 1];
var arr3 = [0, 2];

var test1 = _union(arr1, arr2);
var test2 = _union(arr1, arr3);
var test3 = _union(arr2, arr1);

assert_equal(_length(test1), 3);
assert_equal(_length(test2), 4);
assert_equal(_length(test3), 3);

assert_equal(test1[0], 1);
assert_equal(test1[1], 2);
assert_equal(test1[2], 3);

assert_equal(test2[0], 1);
assert_equal(test2[1], 2);
assert_equal(test2[2], 3);
assert_equal(test2[3], 0);

assert_equal(test3[0], 3);
assert_equal(test3[1], 1);
assert_equal(test3[2], 2);

test_end();