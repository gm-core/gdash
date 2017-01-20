/*
 * Initializes a test in an empty room
 */
global.testPassed = true;
global.testCount = 0;
global.testSuiteName = argument0;
global.testNumber = 0;
global.testAssertNumber = 0;
info("TESTING SUITE: " + argument0);
test_next();
