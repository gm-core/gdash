/// @func _log(values...)
/// @desc Convenience method for show_debug_message(). Automatically convetrs arguments to strings.
/// @param {Mixed} Messages... The message or value to log
function _log() {

	var toshow = "";
	for (var i = 0; i < argument_count; i++) {

		if (i != 0) {
			toshow += ", ";
	    }
    
		if (is_array(argument[i])) {
			toshow += "[" + _join(argument[i],", ") + "]";
		} else {
			toshow += string(argument[i]);
		}
	}
	
	show_debug_message(toshow);


}
