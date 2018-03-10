/// @desc _set
test_start("_set", "Sets a value safely in a deeply nested map");

var map = ds_map_create();
_set(map, "hello.world", 2);

var hello = map[? "hello"];
assert_equal(hello[? "world"], 2);

_set(map, "setMap", ds_map_create(), ds_type_map);
_set(map, "setList", ds_list_create(), ds_type_list);

assert(ds_exists(map[? "setMap"], ds_type_map));
assert(ds_exists(map[? "setList"], ds_type_list));

test_end();

