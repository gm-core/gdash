/* 
 * Concludes an individual test in a test suite.
 * If the test passed, prints a success message and moves on
 * to the next test, otherwise, fails the test and exits.
 */
if (global.testPassed) {
    info("TEST PASSED: " + global.testName);
    test_next();
} else {
    info("TEST FAILED: " + global.testName);
    info("TEST SUITE FAILED: " + global.testSuiteName);
    game_end();
}
