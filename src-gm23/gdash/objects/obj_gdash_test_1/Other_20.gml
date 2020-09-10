/// @desc _concat
test_start("_concat", "Appends one array to another");

var arr1 = [0, 1, 2];
var arr2 = [30, 40, 50];

var res = _concat(arr1, arr2);

assert_equal(_length(res), 6);

assert_equal(res[0], 0);
assert_equal(res[1], 1);
assert_equal(res[2], 2);
assert_equal(res[3], 30);
assert_equal(res[4], 40);
assert_equal(res[5], 50);
test_end();

