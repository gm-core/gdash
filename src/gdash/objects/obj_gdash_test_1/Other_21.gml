/// @desc _index_of
test_start("_index_of", "Returns the index of a value in a collection");

var arr = [1, 2, 3, 4];
var list = ds_list_create();
list[| 0] = 1;
list[| 1] = 2;
list[| 2] = 3;
list[| 3] = 4;

assert_equal(_index_of(arr, 2), 1);
assert_equal(_index_of(arr, 3), 2);
assert_equal(_index_of(arr, 6), -1);
assert_equal(_index_of(list, 2), 1);
assert_equal(_index_of(list, 100), -1);

test_end();

