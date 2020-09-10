/// @func _index_of(collection, value)
/// @desc Returns the index of the given item in the given array, or -1
/// @param {Array|DS_List} collection The collection to search
/// @param {*} value The value to look for
/// @returns {Real} The index of the value, or -1
function _index_of(collection, value) {

	// Search lists
	if (is_real(collection)) {
	    return ds_list_find_index(collection, value);
	}

	// Search arrays
	var n = array_length(collection);

	for (var i = 0; i < n; i++) {
	    if (_is_equal(collection[@ i], value)) {
	        return i;
	    }
	}

	return -1;
}
