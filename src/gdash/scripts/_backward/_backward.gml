/// @func _backward(array)
/// @desc Creates a new array containing the elements of array in reverse order.
/// @param {Array} array The array to reverse
/// @returns {Array} The reversed array
/// @note To modify an array in-place, use `_reverse`
function _backward(arr) {
	/*
	@example
	var myArray = [1, 2, 3];
	var reverseArray = _backward(myArray);
	// => [3, 2, 1]
	*/

	var len;
	var result = [];

	len = array_length(arr);

	for (var i = len - 1; i >= 0; i--) {
		result[i] = arr[@ len - 1 - i];
	}

	return result;
}
