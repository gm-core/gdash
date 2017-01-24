/// @param TestSuiteName
/*
 * Initializes a test in an empty room
 */
global.gamatas_testPassed = true;
global.gamatas_testCount = 0;
global.gamatas_testSuiteName = argument0;
global.gamatas_testNumber = 0;
global.gamatas_testAssertNumber = 0;
gamatas_info("TESTING SUITE: " + argument0);
test_next();
