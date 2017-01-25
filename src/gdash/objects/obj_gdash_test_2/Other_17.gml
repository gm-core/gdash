/// _spread
test_start("_spread", "turns an array into script arguments")

var args = _arrayOf(2, 5);
var args2 = _arrayOf(10, 20);

assert_equal(_spread(__add, args), 7);
assert_equal(_spread(__add, args2), 30);

test_end();