/// _map
test_start("_map", "Iterates over a collection, calling a function");

var map = ds_map_create();
ds_map_add(map, "1", 1);
ds_map_add(map, "2", 2);
ds_map_add(map, "3", 3);
ds_map_add(map, "4", 4);
ds_map_add(map, "5", 5);

var list = ds_list_create();
ds_list_add(list, 1, 2, 3, 4, 5);
ds_list_sort(list, true);

var arr;
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;
arr[3] = 4;
arr[4] = 5;

var mapRes = _map(map, __double, ds_type_map);
var listRes = _map(list, __double, ds_type_list);
var arrRes = _map(arr, __double);

var addTwo = _partial(__add, 2);
var arrRes2 = _map(arr, addTwo);

assert_equal(arrRes2[0], 3);

assert_equal(_length(mapRes), 5);
assert_is_true(_contains(mapRes, 2));
assert_is_true(_contains(mapRes, 4));
assert_is_true(_contains(mapRes, 6));
assert_is_true(_contains(mapRes, 8));
assert_is_true(_contains(mapRes, 10));

assert_equal(_length(listRes), 5);
assert_equal(listRes[0], 2);
assert_equal(listRes[1], 4);
assert_equal(listRes[2], 6);
assert_equal(listRes[3], 8);
assert_equal(listRes[4], 10);

assert_equal(_length(arrRes), 5);
assert_equal(arrRes[0], 2);
assert_equal(arrRes[1], 4);
assert_equal(arrRes[2], 6);
assert_equal(arrRes[3], 8);
assert_equal(arrRes[4], 10);

test_end();

