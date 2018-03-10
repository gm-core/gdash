/// @desc _find
test_start("_find", "returns the first element in an array that is truthy in the function");

var arr = [0, 1, 2, 3, 40, 5];
var res = _find(arr, greaterThanThree);

assert_equal(res, 40);

test_end();

