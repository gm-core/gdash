/// _isEqual
test_start("_isEqual", "Determines if two values are equal");

assert_is_true(_isEqual(1, 1));
assert_is_true(_isEqual("hello", "hello"));
assert_is_false(_isEqual(1, 2));
assert_is_false(_isEqual("hello", "world"));

var map = ds_map_create();
ds_map_add(map, "test", 1);
ds_map_add(map, "test2", "hello");

var map2 = ds_map_create();
ds_map_add(map2, "test", 1);
ds_map_add(map2, "test2", "hello");

var map3 = ds_map_create();
ds_map_add(map3, "test", 2);
ds_map_add(map3, "test2", "hello");

var map4 = ds_map_create();
ds_map_add(map4, "test", 2);

assert_is_true(_isEqual(map, map2, ds_type_map));
assert_is_false(_isEqual(map, map3, ds_type_map));
assert_is_false(_isEqual(map, map4, ds_type_map));

var arr1 = _arrayOf(0, 1, 2, 3, 4);
var arr2 = _arrayOf(0, 1, 2, 3, 4);
var arr3 = _arrayOf(0, 1, 2, 3, 5);
var arr4 = _arrayOf(0, 1, 2, 3);

assert_is_true(_isEqual(arr1, arr2));
assert_is_false(_isEqual(arr1, arr3));
assert_is_false(_isEqual(arr1, arr4));

var list1 = ds_list_create();
ds_list_add(list1, 1, 2, 3, "hello");

var list2 = ds_list_create();
ds_list_add(list2, 1, 2, 3, "hello");

var list3 = ds_list_create();
ds_list_add(list3, 1, 2, 3, "goodbye");

var list4 = ds_list_create();
ds_list_add(list4, 2, 3, "hello");

assert_is_true(_isEqual(list1, list2, ds_type_list));
assert_is_false(_isEqual(list1, list3, ds_type_list));
assert_is_false(_isEqual(list1, list4, ds_type_list));

test_end();

