/// _contains
test_start("_contains", "Should determine if arbitrary things contain targets");

// String contains string
assert_is_true(_contains("hello", "ello"));
assert_is_false(_contains("hello", "goodbye"));

// Array contains
var arr;
arr[0] = 1;
arr[1] = "hello";
arr[2] = "goodbye";

assert_is_true(_contains(arr, 1));
assert_is_true(_contains(arr, "hello"));
assert_is_true(_contains(arr, "goodbye"));
assert_is_false(_contains(arr, "world"));
assert_is_false(_contains(arr, 2));

// ds_map contains
var map = ds_map_create();
ds_map_add(map, "hello", "world");
ds_map_add(map, "number", 2);

assert_is_true(_contains(map, "world"));
assert_is_true(_contains(map, 2));
ds_map_destroy(map);
test_end();
