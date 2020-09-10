/// @func _concat(arrayA, arrayB)
/// @desc Appends the values of one array to another.
/// @param {Array} baseArray The array to append to
/// @param {Array} arrayToAppend The array to append
/// @returns {Array} The concatenated array
function _concat(arrayA, arrayB) {
	/*
	@example
	_concat([0, 1, 2], [3, 4, 5]);
	// => [0, 1, 2, 3, 4, 5]

	*/

	var n = array_length(arrayA);
	var arr = _clone_array(arrayA);

	for (var i = array_length(arrayB) - 1; i >= 0; i--) {
	    arr[@ n+i] = arrayB[@ i]; 
	}

	return arr;
}
