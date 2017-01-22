/*
 * Fails a test, printing the message and test info. This is used
 * internally by asserts, but can also be used to manually fail
 * tests if need be.
 */
 var msg = argument0; 
info(msg);
info("In suite " + global.testSuiteName);
info("In test " + global.testName + ": " + global.testDescription);
global.testPassed = false;
