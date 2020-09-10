/// @func _uniq(array)
/// @desc Returns an array with all duplicate values removed
/// @param {Array} array An array with duplicate values
/// @returns {Array} An array with the duplicate values removed
function _uniq(arr) {
	/*
	@example
	_uniq([1, 1, 2, 3]);
	// => [1, 2, 3]
	*/

	var n = array_length(arr);
	var j = 0;
	var result = undefined;
	var seenMap = ds_map_create();

	if (array_length(arr) <= 1) {
	    return arr;
	}

	for (var i = 0; i < n; i++) {
	    var val = arr[@ i];
	    if (is_undefined(seenMap[? val])) {
	        seenMap[? val] = true;
	        result[j++] = val;
	    }
	}

	ds_map_destroy(seenMap);

	return result;





}
