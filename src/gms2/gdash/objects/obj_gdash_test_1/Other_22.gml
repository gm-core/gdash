/// _set
describe("_set", "Sets a value safely in a deeply nested map");

var map = ds_map_create();
_set(map, "hello.world", 2);

var hello = map[? "hello"];
assert(hello[? "world"], 2);

test_end();

