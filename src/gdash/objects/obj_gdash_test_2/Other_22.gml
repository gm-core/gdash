/// _nth
test_start("_nth", "Returns the nth element of the collection");

var list = ds_list_create();
list[| 0] = "first";
list[| 1] = "second";
list[| 2] = "third";

var array;
array[0] = "first";
array[1] = "second";
array[2] = "third";

assert_equal(_nth(list, 0), list[| 0]);
assert_equal(_nth(list, 1), list[| 1]);
assert_equal(_nth(list, 2), list[| 2]);

assert_equal(_nth(list, -1), list[| 2]);
assert_equal(_nth(list, -2), list[| 1]);
assert_equal(_nth(list, -3), list[| 0]);

assert_equal(_nth(array, 0), array[0]);
assert_equal(_nth(array, 1), array[1]);
assert_equal(_nth(array, 2), array[2]);

assert_equal(_nth(array, -1), array[2]);
assert_equal(_nth(array, -2), array[1]);
assert_equal(_nth(array, -3), array[0]);

test_end();