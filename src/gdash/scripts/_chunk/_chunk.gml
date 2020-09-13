/// @func _chunk(array, size)
/// @desc Creates a two-dimensional array of elements split into groups of given length.
/// @param {Array} array The array to split
/// @param {Integer} size The size of each chunk
/// @returns {Array} The two-dimensional array of chunks
function _chunk(arr, size) {
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
	var len;
	var result = [];

	if (size == 0) return array_create(0);

	len  = array_length(arr);

	for (i = len - 1; i >= 0; i--) {
	    result[i / size, i % size] = arr[i];
	}

	return result;
}
