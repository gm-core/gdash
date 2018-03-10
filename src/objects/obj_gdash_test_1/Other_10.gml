/// @desc _type_of
test_start("_type_of", "Should return the type of any known data type");

assert_equal(_type_of(100), "real");
assert_equal(_type_of("hello"), "string");
assert_equal(_type_of(undefined), "undefined");

test_end();