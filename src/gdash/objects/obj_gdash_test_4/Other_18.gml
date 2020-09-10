/// @description _reverse
test_start("_reverse", "Reverses an array");

var arr1 = [1];
var arr2 = [1, 2, 3];

_reverse(arr1);
_reverse(arr2);

assert_equal(arr1[0], 1);
assert_equal(arr2[0], 3);
assert_equal(arr2[1], 2);
assert_equal(arr2[2], 1);

var test = _reverse(arr2);

assert_equal(test[0], 1);
assert_equal(test[1], 2);
assert_equal(test[2], 3);

test_end();