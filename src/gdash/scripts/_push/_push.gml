/// @func _push(array, value)
/// @desc Adds a value to the end of an array
/// @param {Array} array The array to add the value to
/// @param {*} value The value to add
/// @returns {Array} The array with the value added
function _push(arr, value) {
	/*
	@example
	_push([1, 2], 3);
	// => [1, 2, 3]
	*/

	gml_pragma("forceinline");
	arr[@ array_length(arr)] = value;
	return arr;
}
