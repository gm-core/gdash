/*
 * Kicks off the next test in a suite (the next user defined
 * action). Used internally in end_test(). Use directly with
 * caution, as this is not supported for direct developer use
 * within the test automation suite.
 */
event_user(global.gamatas_testNumber++);
