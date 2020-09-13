/// @func _union(arrays...)
/// @desc Creates an array of unique values, in the order in which they originally appeared, from all given arrays.
/// @param {Array} arrays... The arrays to be unioned
/// @returns {Array} The union of the given arrays
function _union() {
	/*
	@example
	var arr0 = _array_of(0, 1);
	var arr1 = _array_of(0);
	_union(arr0, arr1);
	// => [0, 1];

	var arr0 = _array_of('Sword', 'Potion');
	var arr1 = _array_of('Shield', 'Sword');
	_union(arr0, arr1);
	// => ['Sword', 'Potion', 'Shield'];
	*/

	if (argument_count == 0) return array_create(0);
	if (argument_count == 1) return argument[0];

	var i;
	var j;
	var n;
	var arr;
	var len;
	var tempSet;
	var result = [];

	n = 0;
	tempSet = ds_map_create();
	result = array_create(0);

	for (i = 0; i < argument_count; i++) {
	    arr = argument[i];
	    len = array_length(arr);
	    for (j = 0; j < len; j++) {
	        if (tempSet[? arr[j]] != 1) {
	            tempSet[? arr[j]] = 1;
	            result[n++] = arr[j];
	        }
	    }
	}

	ds_map_destroy(tempSet);
	return result;


}
