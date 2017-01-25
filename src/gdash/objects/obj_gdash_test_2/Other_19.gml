/// _split
test_start("_split", "returns an array of a string split up by a substring");

var str = "hello,world,foo,bar";
var splitStr = _split(str, ",");
assert_equal(_length(splitStr), 4);

assert_equal(splitStr[0], "hello");
assert_equal(splitStr[1], "world");
assert_equal(splitStr[2], "foo");
assert_equal(splitStr[3], "bar");

var str2 = "hello, world, foo";
var splitStr2 = _split(str2, ", ");

assert_equal(_length(splitStr2), 3);
assert_equal(splitStr2[0], "hello");
assert_equal(splitStr2[1], "world");
assert_equal(splitStr2[2], "foo");

test_end();