/// _filter
test_start("_filter", "returns an array with elements removed when they are falsey in the function");

var arr = _arrayOf(0, 1, 2, 3, 4, 5, 6);

var res = _filter(arr, __isEven);

assert_is_true(_contains(res, 0));
assert_is_true(_contains(res, 2));
assert_is_true(_contains(res, 4));
assert_is_true(_contains(res, 6));

assert_is_false(_contains(res, 1));
assert_is_false(_contains(res, 3));
assert_is_false(_contains(res, 5));

var list = ds_list_create();
ds_list_add(list, 0, 1, 2, 3, 4, 5, 6);
var resList = _filter(list, __isEven);

_log(list[| 1]);
_log(resList[| 1]);

assert_is_true(_contains(resList, 0, 0, ds_type_list));
assert_is_true(_contains(resList, 2, 0, ds_type_list));
assert_is_true(_contains(resList, 4, 0, ds_type_list));
assert_is_true(_contains(resList, 6, 0, ds_type_list));

assert_is_false(_contains(resList, 1, 0, ds_type_list));
assert_is_false(_contains(resList, 3, 0, ds_type_list));
assert_is_false(_contains(resList, 5, 0, ds_type_list));

ds_list_destroy(list);
ds_list_destroy(resList);

test_end();

