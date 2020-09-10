/// @desc Convenience method for assert_is_true
/// @param Value
/// @param OptionalMessage
if (argument_count > 1) {
    assert_is_true(argument[0], argument[1]);
} else {
    assert_is_true(argument[0]);
}