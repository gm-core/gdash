/// _keys
describe("_keys", "Returns an array of all keys in a map");

var map = ds_map_create();
ds_map_add(map, "one", "hello");
ds_map_add(map, "two", "hello");
ds_map_add(map, "three", "hello");
ds_map_add(map, "four", "hello");
ds_map_add(map, "five", "hello");

var keys = _keys(map);

assert(_length(keys), 5);
assert(_contains(keys, "one"));
assert(_contains(keys, "two"));
assert(_contains(keys, "three"));
assert(_contains(keys, "four"));
assert(_contains(keys, "five"));

ds_map_destroy(map);
test_end();

