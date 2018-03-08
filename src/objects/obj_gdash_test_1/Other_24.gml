/// @desc _clone_array
test_start("_clone_array", "Returns a clone of the given array");

var arr = [2, 1, 5, 4, 6];
var cloned = _clone_array(arr);

for (var i = 0; i < array_length_1d(arr); i++) {
    assert_equal(cloned[i], arr[i]);
}

test_end();


