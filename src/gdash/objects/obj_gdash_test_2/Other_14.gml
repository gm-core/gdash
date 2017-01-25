/// _and
test_start("_and", "returns the result of a logical 'and' of the params");

assert_is_true(_and(true, true));
assert_is_false(_and(false, true));
assert_is_false(_and(true, false));
assert_is_false(_and(false, false));

test_end();