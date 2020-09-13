/// @func _drop_right(array, n)
/// @desc Creates a slice of array with n elements dropped from the end.
/// @param {Array} array The array to inspect
/// @param {Integer} n The number of elements to drop
/// @returns {Array} The slice of array
function _drop_right(arr, num) {
	/*
	@example
	var arr = [0, 1, 2, 3];
	_drop_right(arr, 2);
	// => [0, 1];
	*/

	var i;
	var n;
	var len;
	var result = [];

	if (num == 0) return arr;

	n = 0;
	len = array_length(arr) - num;
	result = array_create(max(len, 0));

	for (i = 0; i < len; i++) {
		result[n++] = arr[i];
	}

	return result;



}
