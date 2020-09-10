/// @desc Ensures the passed in object/instance exists
/// @param Object
global.gamatas_testAssertNumber++;
if (!instance_exists(argument0)) {
    var msg;
    
    if (argument_count > 1) {
        msg = argument[1];
    } else {
        msg = gamatas_create_assert_error(string(argument[0]) + " has no instances");
    }
    test_fail(msg);
}
