/// @description _list_of
test_start("_list_of", "returns a list of the given parameters");
var res = _list_of(1, 2, 3, 4);

assert_is_true(ds_exists(res, ds_type_list));
assert_equal(res[| 0], 1);
assert_equal(res[| 1], 2);
assert_equal(res[| 2], 3);
assert_equal(res[| 3], 4);

ds_list_destroy(res);

test_end();