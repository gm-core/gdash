/// @description _intersection_by

test_start("_intersection_by", "Finds the intersection of arrays using an iteratee");

var arr1 = [1.4, 2, 3.5, 4];
var arr2 = [1, 4.9, 3];
var arr3 = [0.75, 2.1];

var test1 = _intersection_by(arr1, arr2, _floor);
var test2 = _intersection_by(arr1, arr3, _floor);
var test3 = _intersection_by(arr2, arr1, _floor);
var test4 = _intersection_by(arr1, arr2, arr3, _floor);

assert_equal(_length(test1), 3);
assert_equal(_length(test2), 1);
assert_equal(_length(test3), 3);
assert_equal(_length(test4), 0);

assert_equal(test1[0], 1.4);
assert_equal(test1[1], 3.5);
assert_equal(test1[2], 4);

assert_equal(test2[0], 2);

assert_equal(test3[0], 1);
assert_equal(test3[1], 4.9);
assert_equal(test3[2], 3);

test_end();