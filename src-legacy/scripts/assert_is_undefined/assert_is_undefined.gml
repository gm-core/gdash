/// @desc Ensures the passed in argument is undefined
/// @param TestValue
/// @param OptionalMessage

global.gamatas_testAssertNumber++;
if (!is_undefined(argument[0])) {

    var msg;
    if (argument_count > 1) {
        msg = argument[1];
    } else {
        msg = gamatas_create_assert_error(string(argument[0]) + " is not undefined.");
    }
    test_fail(msg);
}
