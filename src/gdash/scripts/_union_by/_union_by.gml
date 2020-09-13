/// @func _union_by(arrays..., iteratee)
/// @desc Like `_union()`, except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which uniqueness is computed.
/// @param {Array} arrays... The arrays to be unioned
/// @param {Script} iteratee The script invoked on each element to generate uniqueness criteria
/// @returns {Array} The union of the given arrays
function _union_by() {
	/*
	@example
	// _floor(x)
	return floor(x);

	var arr0 = [0.5, 1.2];
	var arr1 = [0, 1.9];
	_union_by(arr0, arr1, _floor);
	// => [0.5, 1.2];
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

	n = 0;
	iter = argument[argument_count - 1];
	tempSet  = ds_map_create();
	result = array_create(0);

	for (i = 0; i < argument_count; i++) {
	    arr = argument[i];
	    len = array_length(arr);
	    for (j = 0; j < len; j++) {
			crit = script_execute(iter, arr[j]);
	        if (tempSet[? crit] != 1) {
	            tempSet[? crit] = 1;
	            result[n++] = arr[j];
	        }
	    }
	}

	ds_map_destroy(tempSet);
	return result;



}
