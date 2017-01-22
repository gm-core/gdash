/*
 * Ensures the passed in argument0 does not evalutate to argument1.
 * If it fails, it will log an error and fail the test.
 *
 * Example:
 * var player = instance_create(0, 0, obj_player);
 * var previous_health = player.health;
 * deal_random_damage(player);
 * assert_not(player.health, previous_health);
 */
 
global.testAssertNumber++;
if (argument_count == 1) {
    if (argument[0] == true) {
        var msg = create_assert_error(string(argument[0]) + " shouldn't be true");
        test_fail(msg);
    }
} else if (argument[0] == argument[1]) {
    var msg = create_assert_error(string(argument[0]) + " shouldn't be " + string(argument[1]));
    test_fail(msg);
}
