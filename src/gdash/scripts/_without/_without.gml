/// @func _without(array, values...)
/// @desc Creates an array excluding all given values from amongst the elements of the given array
/// @param {Array} array The array to inspect
/// @param {*} values... The values to exclude
/// @returns {Array} The array of filtered elements
function _without() {
	/*
	@example
	var arr = [0, 1, 0, 2];
	_without(arr, 0, 1);
	// => [2];
	*/

	if (argument_count == 0) return array_create(0);
	if (argument_count == 1) return argument[0];

	var i;
	var j;
	var n;
	var arr;
	var match;
	var len;
	var result = [];

	n = 0;
	arr = argument[0];
	len = array_length(arr);
	result = array_create(0);

	for (i = 0; i < len; i++) {
		match = false;
		for (j = 1; j < argument_count; j++) {
			if (arr[i] == argument[j]) {
				match = true;
			}
		}
		if (!match) {
			result[n++] = arr[i];
		}
	}

	return result;



}
