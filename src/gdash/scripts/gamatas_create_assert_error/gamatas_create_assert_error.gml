function gamatas_create_assert_error(argument0) {
	/* 
	 * Helper method for asserts to create standardized error
	 * messages. Not meant for external use.
	 */
	return "ASSERT ERROR - " + string(argument0) + " - ASSERT #" + string(global.gamatas_testAssertNumber);



}
