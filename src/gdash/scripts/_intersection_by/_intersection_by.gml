/// @func _intersection_by(arrays..., iteratee)
/// @desc Like `_intersection()`, except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which uniqueness is computed.
/// @param {Array} arrays... The arrays to be intersected
/// @param {Script} iteratee The script invoked on each element to generate uniqueness criteria
/// @returns {Array} The intersection of the given arrays
function _intersection_by() {
	/*
	@example
	// _floor(x)
	return floor(x);

	var arr0 = [0, 1.9];
	var arr1 = [0.6, 3];
	_intersection_by(arr0, arr1, _floor);
	// => [0];
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
	tempSet = ds_map_create();

	for (i = 1; i < argument_count; i++) {
	    arr = argument[i];
	    len = array_length(arr);
	    for (j = 0; j < len; j++) {
			crit = script_execute(iter, arr[j]);
	        if (i == 1 || tempSet[? crit] == i - 1) {
	            tempSet[? crit] = i;
	        }
	    }
	}

	n    = 0;
	arr = argument[0];
	len = array_length(arr);
	result = array_create(0);

	for (i = 0; i < len; i++) {
		crit = script_execute(iter, arr[i]);
	    if (tempSet[? crit] == argument_count - 2) {
	        tempSet[? crit]++;
	        result[n++] = arr[i];
	    }
	}

	ds_map_destroy(tempSet);
	return result;



}
