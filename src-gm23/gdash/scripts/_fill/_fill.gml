/// @func _fill(array, value [, start, end])
/// @desc Fills elements of array with value from start up to, but not including, end.
/// @param {Array} array The array to fill
/// @param {*} value The value with which to fill elements of array
/// @param {Integer} optionalStart The start index
/// @param {Integer} optionalEnd The end index
/// @returns {Array} The filled array
/// @note This method mutates array.
function _fill() {
	/*
	@example
	var arr = [0, 1, 2, 3];
	_fill(arr, 4, 1, 3);
	// => [0, 4, 4, 3];

	var arr = [0, 1, 2, 3];
	_fill(arr, 0);
	// => [0, 0, 0, 0];
	*/

	var i;
	var arr;
	var last;

	if (argument_count == 2) {
	    i    = 0;
	    last = array_length(argument[0]);
	} else if (argument_count == 4) {
	    i    = argument[2];
	    last = argument[3];
	} else return false;

	arr = argument[0];

	for (; i < last; i++) {
	    arr[@ i] = argument[1];
	}

	return arr;



}
