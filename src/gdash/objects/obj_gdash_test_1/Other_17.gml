/// _push
test_start("_push", "Adds an element to an array");

var arr = _arrayOf(0, 1, 2);
assert_equal(_length(arr), 3);

arr = _push(arr, 3);
assert_equal(_length(arr), 4);
assert_equal(arr[3], 3);

test_end();

