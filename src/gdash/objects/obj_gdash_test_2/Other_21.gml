/// _or
test_start("_or", "returns the result of an OR of two values");

assert_is_true(_or(true, true));
assert_is_true(_or(true, false));
assert_is_true(_or(false, true));
assert_is_false(_or(false, false));

test_end();