/// @desc _join
test_start("_join", "turns an array into a string");

var array = ["hello", "world", "!"];
var str = _join(array, " ");
assert_equal(str, "hello world !");

test_end();