/// @param Name
/// @param Description
/*
 * Sets the description of the currently running test or exits
 * if the previous test fails. Use this to define specific tests
 * within a given test suite.
 * Example:
 * describe("Player Death", "The player should die at 0 health");
 */
if (global.gamatas_testPassed) {
    global.gamatas_testName = argument0;
    global.gamatas_testDescription = argument1;
    global.gamatas_testCount++;
} else {
    game_end();
}
