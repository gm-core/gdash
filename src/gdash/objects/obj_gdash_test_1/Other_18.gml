/// _find
test_start("_find", "returns the first element in an array that is truthy in the function");

var arr = _arrayOf(0, 1, 2, 3, 40, 5);
var res = _find(arr, __greaterThanThree);

assert_equal(res, 40);

test_end();

