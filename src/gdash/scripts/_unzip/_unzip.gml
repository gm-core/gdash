/// @func _unzip(array)
/// @desc From a zipped two-dimensional array, creates a collection of grouped elements by regrouping the elements to their pre-zipped configuration 
/// @param {Array} array The zipped two-dimensional array
/// @returns {Array} The two-dimensional array of regrouped elements

/*
@example
var arr0 = [0, 1, 2];
var arr1 = [3, 4, 5];
var arr2 =_zip(arr0, arr1);
_unzip(arr2);
// => [[0, 1, 2], [3, 4, 5]];

*/
function _unzip(arr) {
	if (argument_count != 1) return array_create(0);

	var i;
	var j;
	var len;
	var num;
	var result = [];

	len = array_length(arr);
	num = array_length(arr[0]);
	result = array_create(num, 0);

	for (i = num - 1; i >= 0; i--) {
		result[i] = array_create(len, 0);
	    for (j = len - 1; j >= 0; j--) {
	        result[i][j] = arr[j][i];
	    }
	}

	return result;
}
