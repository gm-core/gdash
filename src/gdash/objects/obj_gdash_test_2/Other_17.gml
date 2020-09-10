/// @desc _spread
test_start("_spread", "turns an array into script arguments")

var args = [2, 5];
var args2 = [10, 20];

assert_equal(_spread(add, args), 7);
assert_equal(_spread(add, args2), 30);

test_end();