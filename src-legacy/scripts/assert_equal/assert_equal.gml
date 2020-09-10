/// @desc Ensures the passed values are equal
/// @param TestValue
/// @param ExpectedValue
/// @param OptionalMessage

global.gamatas_testAssertNumber++;
if (argument[0] != argument[1]) {

    var msg;
    if (argument_count > 2) {
        msg = argument[2];
    } else {
        msg = gamatas_create_assert_error(string(argument[0]) + " is not " + string(argument[1]));
    }
    test_fail(msg);
}
