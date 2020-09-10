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

	// Abuse GML array copy into script mechanics.
	/// Note, maybe switch to GMS2 new method: array_copy?
	var result = arr;

	result[0] = result[0]; // this forces a copy    
	return result;
}
