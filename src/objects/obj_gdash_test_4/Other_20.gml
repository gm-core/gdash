/// @description _union_by

test_start("_union_by", "Finds the union of arrays using an iteratee");

var arr1 = [1, 2, 3.3];
var arr2 = [3, 1.2, 1.9];
var arr3 = [0, 2.6];

var test1 = _union_by(arr1, arr2, native_floor);
var test2 = _union_by(arr1, arr3, native_floor);
var test3 = _union_by(arr2, arr1, native_floor);

assert_equal(_length(test1), 3);
assert_equal(_length(test2), 4);
assert_equal(_length(test3), 3);

assert_equal(test1[0], 1);
assert_equal(test1[1], 2);
assert_equal(test1[2], 3.3);

assert_equal(test2[0], 1);
assert_equal(test2[1], 2);
assert_equal(test2[2], 3.3);
assert_equal(test2[3], 0);

assert_equal(test3[0], 3);
assert_equal(test3[1], 1.2);
assert_equal(test3[2], 2);

test_end();