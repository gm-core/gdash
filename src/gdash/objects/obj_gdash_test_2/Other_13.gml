/// _arrayOf
test_start("_arrayOf", "returns an array of the arguments");

var arr = _arrayOf(2, 4, 6, 1, 2, 3);

assert_equal(_typeOf(arr), "array");

assert_equal(arr[0], 2);
assert_equal(arr[1], 4);
assert_equal(arr[2], 6);
assert_equal(arr[3], 1);
assert_equal(arr[4], 2);
assert_equal(arr[5], 3);

test_end();