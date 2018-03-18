/// @description _backward
test_start("_backward", "Reverses an array");

var arr1 = [1];
var arr2 = [1, 2, 3];

var test1 = _backward(arr1);
var test2 = _backward(arr2);
var test3 = _backward(test2);

assert_equal(test1[0], arr1[0]);
assert_equal(test2[0], 3);
assert_equal(test2[1], 2);
assert_equal(test2[2], 1);
assert_equal(test3[0], 1);
assert_equal(test3[1], 2);
assert_equal(test3[2], 3);

test_end();