/// _typeOf
test_start("_typeOf", "Should return the type of any known data type");

assert_equal(_typeOf(100), "real");
assert_equal(_typeOf("hello"), "string");
assert_equal(_typeOf(undefined), "undefined");

test_end();

