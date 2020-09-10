/// @desc Asserts that the passed in argument is true
/// @param Value
/// @param OptionalMessage
function assert_is_true() {

	if (argument_count > 1) {
	    assert_equal(argument[0], true, argument[1]);
	} else {
	    assert_equal(argument[0], true);
	}


}
