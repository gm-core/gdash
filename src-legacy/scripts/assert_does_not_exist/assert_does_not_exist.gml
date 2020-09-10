/// @desc Ensures the passed in object/instance does not exist in this room
/// @param Object

global.gamatas_testAssertNumber++;
if (instance_exists(argument0)) {

    if (argument_count > 1) {
        msg = argument[1];
    } else {
        msg = gamatas_create_assert_error(string(argument[0]) + " should not exist");
    }
    test_fail(msg);
}
