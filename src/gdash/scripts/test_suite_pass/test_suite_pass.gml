/* 
 * Finishes the test suite and moves on if there are more tests/rooms,
 * otherwise, quits. This should be called by itself in the last user
 * defined action on your test controller object.
 */
gamatas_info("TEST SUITE PASSED: " + global.gamatas_testSuiteName);
if (room != room_last) {
    room_goto_next();
} else {
    gamatas_info("ALL TESTS PASSING");
    game_end();
}
