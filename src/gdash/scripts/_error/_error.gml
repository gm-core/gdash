/// @func _error(message [, fatal])
/// @desc When running with the debugger, displays an error window. Otherwise, logs an error using `_log`.
/// @param {String} message The message to error with
/// @param {Boolean} fatal [Optional] If true, will force a show_error() call with `abort` set to true
/// @note Only mark an error as `fatal` if you are okay with it ending your game
function _error() {
	/*
	@example
	_error("This is an error that will let the game continue");
	_error("This is an error that will let the game continue", false);
	_error("This is an error that will kill the game", true);
	*/

	var message = argument[0];
	var fatal = argument_count > 1 ? argument[1] : false;

	if (fatal || debug_mode) {
	    show_error(message, fatal);
	} else {
	    _log("ERROR: " + message);
	}


}
