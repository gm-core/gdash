/// _free
test_start("_free", "frees a ds_map or ds_list or partial from memory");

var map = ds_map_create();
var list = ds_list_create();
var partial = _partial(__add, 1);

_free(map, ds_type_map);
_free(list, ds_type_list);
_free(partial);

assert_is_false(ds_exists(map, ds_type_map));
assert_is_false(ds_exists(list, ds_type_list));
assert_is_false(ds_exists(partial, ds_type_map));

test_end();