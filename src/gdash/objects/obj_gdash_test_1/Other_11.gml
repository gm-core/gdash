/// @desc _contains
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

assert_is_true(_contains(map, "world", 0 ,ds_type_map));
assert_is_true(_contains(map, 2, 0, ds_type_map));
ds_map_destroy(map);

// ds_list contains
var list = ds_list_create();
list[| 0] = "hello";
list[| 1] = "world";
assert_is_true(_contains(list, "hello"));
assert_is_true(_contains(list, "world"));
assert_is_false(_contains(list, "hellote"));
test_end();
