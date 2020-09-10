/// @func _find(array, findMethod)
/// @desc Iterates over an array, returning the first element that the given script returns true for.
/// @param {Array} array The array to iterate over
/// @param {Method} findMethod The method to run on the given element
/// @returns {*} The first element that returns truthy from the script
function _find(arr, findMethod) {
	/*
	@example
	_find([0, 1, 2, 3], function(n) {return n == 3});
	// => 3
	*/


	var n = array_length(arr);

	for (var i = 0; i < n; i++) {
	    if (findMethod(arr[@ i])) {
	        return arr[@ i];
	    }
	}

	// Catch empty result
	return undefined;
}
