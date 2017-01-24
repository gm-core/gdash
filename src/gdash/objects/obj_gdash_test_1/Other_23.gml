/// _get
test_start("_get", "Retrieves a deeply nested map value");

var map = ds_map_create();
map[? "hello"] = ds_map_create();
var hello = map[? "hello"];
hello[? "world"] = 2;

assert_equal(_get(map, "hello.world"), 2);

test_end();

