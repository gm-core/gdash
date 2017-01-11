/// _contains
describe("_contains", "Should determine if arbitrary things contain targets");

// String contains string
assert(_contains("hello", "ello"), true);
assert_not(_contains("hello", "goodbye"), true);

// Array contains
var arr;
arr[0] = 1;
arr[1] = "hello";
arr[2] = "goodbye";

assert(_contains(arr, 1), true);
assert(_contains(arr, "hello"), true);
assert(_contains(arr, "goodbye"), true);
assert_not(_contains(arr, "world"), true);
assert_not(_contains(arr, 2), true);

// ds_map contains
var map = ds_map_create();
ds_map_add(map, "hello", "world");
ds_map_add(map, "number", 2);

assert(_contains(map, "world"), true);
assert(_contains(map, 2), true);
ds_map_destroy(map);
test_end();

