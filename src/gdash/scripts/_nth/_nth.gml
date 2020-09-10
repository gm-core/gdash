/// @func _nth(collection, index)
/// @desc Returns the nth index of the given array or ds_list. If n is negative, the nth element from the end is returned.
/// @param collection
/// @param n
function _nth(collection, index) {
	var n = index;
	var type = _type_of(collection);


	if (type == "real") {
	    if (n >= 0) {
	        return collection[| n];
	    } else {
	        return collection[| ds_list_size(collection) + n];
	    }
	} else if (type == "array") {
	    if (n >= 0) {
	        return collection[@ n];
	    } else {
	        return collection[@ array_length(collection) + n];
	    }
	} else {
	    show_error("Trying to return nth element of an incorrect type: " + type + "\nCollection must be a ds_list or array.", false);
	}
}
