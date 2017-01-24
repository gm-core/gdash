/// _indexOf
test_start("_indexOf", "Returns the index of a value in a collection");

var arr = _arrayOf(1, 2, 3, 4);
var list = ds_list_create();
list[| 0] = 1;
list[| 1] = 2;
list[| 2] = 3;
list[| 3] = 4;

assert_equal(_indexOf(arr, 2), 1);
assert_equal(_indexOf(arr, 3), 2);
assert_equal(_indexOf(arr, 6), -1);
assert_equal(_indexOf(list, 2), 1);
assert_equal(_indexOf(list, 100), -1);

test_end();

