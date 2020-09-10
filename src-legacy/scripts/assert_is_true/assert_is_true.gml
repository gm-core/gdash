/// @desc Asserts that the passed in argument is true
/// @param Value
/// @param OptionalMessage

if (argument_count > 1) {
    assert_equal(argument[0], true, argument[1]);
} else {
    assert_equal(argument[0], true);
}