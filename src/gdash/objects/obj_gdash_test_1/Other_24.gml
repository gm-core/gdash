/// @desc _clone_array
test_start("_clone_array", "Returns a clone of the given array");

var arr = [2, 1, 5, 4, 6];
var cloned = _clone_array(arr);

for (var i = 0; i < array_length(arr); i++) {
    assert_equal(cloned[i], arr[i]);
}

// Test that it is a clone and not a reference
var originalPositionZero = arr[0];
arr[0] = 10;

assert_equal(cloned[0], originalPositionZero);

// Test that it works with an array of size zero
var smolArr = [];
var smolCloned = _clone_array(smolArr);

assert_equal(array_length(smolCloned), 0);

test_end();


