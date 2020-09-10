/// @desc Asserts that the passed in argument is false
/// @param Value
/// @param OptionalMessage
function assert_is_false() {

	if (argument_count > 1) {
	    assert_equal(argument[0], false, argument[1]);
	} else {
	    assert_equal(argument[0], false);
	}


}
