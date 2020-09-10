/// @func _times(executeCount, method)
/// @desc Returns an array of the result of a function run the given number of times
/// @param {Real} executeCount The number of times to execute the function
/// @param {Method} method The method to execute
/// @returns {Array} An array of the script results
function _times(count, func) {
	/*
	@example
	_times(3, returnTheValue5);
	// => [5, 5, 5];

	*/

	var arr;

	arr[count-1] = 0;

	for (var i = 0; i < count; i++) {
	    arr[i] = _run(func, i);
	}

	return arr;
}
