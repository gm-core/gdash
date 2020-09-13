/// @func _difference_by(array, arrays..., iteratee)
/// @desc Like `_difference()`, except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which they are compared.
/// @param {Array} array The array to inspect
/// @param {Array} arrays... The arrays whose values are to be excluded
/// @param {Script} iteratee The script invoked on each element to generate comparison criteria
/// @returns {Array} The difference between the first and the remaining arrays
function _difference_by() {
	/*
	@example
	// _floor(x)
	return floor(x);

	var arr0 = [0.5, 1, 2];
	var arr1 = [0];
	var arr2 = [0.1, 2.9];
	_difference_by(arr0, arr1, arr2, _floor);
	// => [1];
	*/

	if (argument_count == 0) return array_create(0);
	if (argument_count == 1) return argument[0];

	var i;
	var j;
	var n;
	var arr;
	var crit;
	var iter;
	var len;
	var tempSet;
	var result = [];

	iter = argument[argument_count - 1];
	tempSet  = ds_map_create();

	for (i = 1; i < argument_count; i++) {
	    arr = argument[i];
	    len = array_length(arr);
	    for (j = 0; j < len; j++) {
			crit = script_execute(iter, arr[j]);
	        if (tempSet[? crit] != 1) {
	            tempSet[? crit] = 1;
	        }
	    }
	}

	n = 0;
	arr = argument[0];
	len = array_length(arr);
	result = array_create(0);

	for (i = 0; i < len; i++) {
		crit = script_execute(iter, arr[i]);
		if (tempSet[? crit] != 1) {
			result[n++] = arr[i];	
		}
	}

	ds_map_destroy(tempSet);
	return result;



}
