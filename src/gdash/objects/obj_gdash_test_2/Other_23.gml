/// _toArray
test_start("_toArray", "Converts a list to an array");

var list = ds_list_create();
ds_list_add(1, 2, 3, 4, 5);

var arr = _toArray(list);

for (var i = 0; i < _length(arr); i++) {
    assert_equal(list[| i], arr[i]);
}

test_end();