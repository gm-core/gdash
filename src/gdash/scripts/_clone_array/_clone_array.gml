/// @func _clone_array(array)
/// @desc Clones a given input array, returning a deep copy.
/// @param {Array} array The array to clone
/// @returns {Array} A copy of the input array
function _clone_array(arr) {
	/*
	@example
	var myArray = [1, 2, 3];
	var copyArray = _clone_array(myArray);
	_is_equal(myArray, copyArray)
	// => true
	*/
	
	var result = [];
	array_copy(result, 0, arr, 0, array_length(arr));
	return result;
}
