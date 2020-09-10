/// @desc Ensures the passed in values are not equal
/// @param TestValue
/// @param UnexpectedValue
/// @param OptionalMessage

global.gamatas_testAssertNumber++;
if (argument[0] == argument[1]) {
    var msg = "";
    
    if (argument_count > 2) {
        msg = argument[2];
    } else {
        msg = gamatas_create_assert_error(string(argument[0]) + " shouldn\'t be " + string(argument[1]));
    }
    test_fail(msg);
}
