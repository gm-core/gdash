/// @func _zip(arrays...)
/// @desc Creates a two-dimensional array of grouped elements, the first of which contains the first elements of the given arrays, the second of which contains the second elements of the given arrays, and so on.
/// @param {Array} arrays... The remaining arrays
/// @returns {Array} The array of elements grouped in arrays
function _zip() {
	/*
	@example
	var arr0 = [0, 1];
	var arr1 = ['Sword', 'Shield'];
	var arr2 = [true, false];
	_zip(arr0, arr1, arr2);
	// => [[0, 'Sword', true], [1, 'Shield', false]];

	var arr0 = [0, 1, 2];
	var arr1 = [3, 4, 5];
	_zip(arr0, arr1);
	// => [[0, 3], [1, 4], [2, 5]];
	*/

	if (argument_count == 0) return array_create(0);

	var i;
	var j;
	var arr;
	var len;
	var result = [];

	len = array_length(argument[0]);
	for (i = 1; i < argument_count; i++)
	    len = max(len, array_length(argument[i]));
	result = array_create(argument_count);
    
	for (i = len - 1; i >= 0; i--) {
	    for (j = argument_count - 1; j >= 0; j--) {
	        arr = argument[j];        
	        if (i >= array_length(arr)) {
				result[i][j] = 0;
				continue;
			}
	        result[i][j] = arr[i];
	    }
	}

	return result;



}
