/// _cloneArray
test_start("_cloneArray", "Returns a clone of the given array");

var arr = _arrayOf(2, 1, 5, 4, 6);
var cloned = _cloneArray(arr);

for (var i = 0; i < array_length_1d(arr); i++) {
    assert_equal(cloned[i], arr[i]);
}

test_end();


