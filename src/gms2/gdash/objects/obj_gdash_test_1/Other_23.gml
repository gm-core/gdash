/// _get
describe("_get", "Retrieves a deeply nested map value");

var map = ds_map_create();
map[? "hello"] = ds_map_create();
var hello = map[? "hello"];
hello[? "world"] = 2;

assert(_get(map, "hello.world"), 2);

test_end();

