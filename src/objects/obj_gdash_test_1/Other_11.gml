/// @desc _contains
test_start("_contains", "Should determine if a collection or map contains targets");

// String contains string
assert_is_true(_contains("hello", "ello"));
assert_is_false(_contains("hello", "goodbye"));
assert_is_true(_contains("hello", "e", 1));
assert_is_false(_contains("hello", "e", 2));
assert_is_false(_contains("hello", "e", 100));

// Array contains
var arr = [1, "hello", "goodbye"];

assert_is_true(_contains(arr, 1));
assert_is_true(_contains(arr, "hello"));
assert_is_true(_contains(arr, "goodbye"));
assert_is_false(_contains(arr, "world"));
assert_is_false(_contains(arr, 2));
assert_is_true(_contains(arr, "hello", 1));
assert_is_false(_contains(arr, 1, 2));
assert_is_false(_contains(arr, "hello", 2));
assert_is_false(_contains(arr, "hello", 100));

// ds_map contains
var map = ds_map_create();
ds_map_add(map, "hello", "world");
ds_map_add(map, "number", 2);

assert_is_true(_contains(map, "world", 0 ,ds_type_map));
assert_is_true(_contains(map, 2, 0, ds_type_map));
assert_is_false(_contains(map, "world", 1, ds_type_map));
assert_is_false(_contains(map, 2, 100, ds_type_map));
assert_is_true(_contains(map, 2, 1, ds_type_map));

ds_map_destroy(map);

// ds_list contains
var list = ds_list_create();
list[| 0] = "hello";
list[| 1] = "world";
assert_is_true(_contains(list, "hello"));
assert_is_true(_contains(list, "world"));
assert_is_false(_contains(list, "hellote"));
assert_is_true(_contains(list, "world", 1));
assert_is_true(_contains(list, "hello", 0));
assert_is_false(_contains(list, "hello", 1));

test_end();
