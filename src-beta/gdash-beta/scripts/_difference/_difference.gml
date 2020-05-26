/// @func _difference(array, arrays...)
/// @desc Creates an array of values from the first array not found in the other arrays.
/// @param {Array} array The array to inspect
/// @param {Array} arrays... The arrays whose values are to be excluded
/// @returns {Array} The difference between the first and the remaining arrays
function _difference() {
	/*
	@example
	var arr0 = [0, 1, 2];
	var arr1 = [0];
	var arr2 = [0, 2];
	_difference(arr0, arr1, arr2);
	// => [1];
	*/

	if (argument_count == 0) return array_create(0);
	if (argument_count == 1) return argument[0];

	var i;
	var j;
	var n;
	var arr;
	var len;
	var set;
	var result;

	set = ds_map_create();

	for (i = 1; i < argument_count; i++) {
	    arr = argument[i];
	    len = array_length_1d(arr);
	    for (j = 0; j < len; j++) {
	        if (set[? arr[j]] != 1) {
	            set[? arr[j]] = 1;
	        }
	    }
	}

	n = 0;
	arr = argument[0];
	len = array_length_1d(arr);
	result = array_create(0);

	for (i = 0; i < len; i++) {
		if (set[? arr[i]] != 1) {
			result[n++] = arr[i];	
		}
	}

	ds_map_destroy(set);
	return result;



}
