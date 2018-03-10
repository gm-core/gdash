/// @desc _to_array
test_start("_to_array", "Converts a list to an array");

var list = ds_list_create();
ds_list_add(1, 2, 3, 4, 5);

var arr = _to_array(list);

for (var i = 0; i < _length(arr); i++) {
    assert_equal(list[| i], arr[i]);
}

test_end();