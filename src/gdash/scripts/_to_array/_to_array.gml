/// @func _to_array(list)
/// @desc Converts the given ds_list to an array
/// @param list
/// @note If the given list is of size 0, this will return undefined.
function _to_array(list) {
	var listSize = ds_list_size(list);
	var array;
	array[0] = undefined;

	for (var i = listSize - 1; i >= 0; i--) {
	    array[i] = list[| i];
	}

	if (is_undefined(array[0])) {
	    return undefined;
	}

	return array;
}
