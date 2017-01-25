/// _times
test_start("_times", "returns an array of script results over a number of times");

var arr = _times(3, __returnFour);

assert_equal(_length(arr), 3);
assert_equal(arr[0], 4);
assert_equal(arr[1], 4);
assert_equal(arr[2], 4);

test_end();