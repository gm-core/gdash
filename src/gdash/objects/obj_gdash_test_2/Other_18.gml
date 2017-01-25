/// _length
test_start("_length", "returns the length of an array, list, or string, or 0 for undefined");

var array = _arrayOf(1, 2, 3);

var list = ds_list_create();
ds_list_add(list, 1, 2, 3, 4);

var str = "hello";

assert_equal(_length(array), 3);
assert_equal(_length(list), 4);
assert_equal(_length(str), 5);
assert_equal(_length(undefined), 0);

test_end();