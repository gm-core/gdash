/*
 * Sets the description of the currently running test or exits
 * if the previous test fails. Use this to define specific tests
 * within a given test suite.
 * Example:
 * describe("Player Death", "The player should die at 0 health");
 */
if (global.testPassed) {
    global.testName = argument0;
    global.testDescription = argument1;
    global.testCount++;
} else {
    game_end();
}
