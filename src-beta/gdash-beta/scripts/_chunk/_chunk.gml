/// @func _chunk(array, size)
/// @desc Creates a two-dimensional array of elements split into groups of given length.
/// @param {Array} array The array to split
/// @param {Integer} size The size of each chunk
/// @returns {Array} The two-dimensional array of chunks
function _chunk(argument0, argument1) {
	/*
	@example
	var arr = [0, 1, 2, 3];
	_chunk(arr, 2);
	// => [[0, 1], [2, 3]];

	var arr = [0, 1, 2, 3];
	_chunk(arr, 3);
	// => [[0, 1, 2], [3]];
	*/

	if (argument_count != 2) return false;

	var i;
	var arr;
	var len;
	var size;
	var result;

	size = argument1;
	if (size == 0) return array_create(0);

	arr  = argument0;
	len  = array_length_1d(arr);

	for (i = len - 1; i >= 0; i--) {
	    result[i / size, i % size] = arr[i];
	}

	return result;



}
