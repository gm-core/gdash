/// @func _drop_right(array, n)
/// @desc Creates a slice of array with n elements dropped from the end.
/// @param {Array} array The array to inspect
/// @param {Integer} n The number of elements to drop
/// @returns {Array} The slice of array
/*
@example
var arr = _array_of(0, 1, 2, 3);
_drop_right(arr, 2);
// => [0, 1];
*/

if (argument1 == 0) return argument0;

var i;
var n;
var _arr;
var _len;
var __drop;

n = 0;
_arr = argument0;
_len = array_length_1d(_arr) - argument1;
__drop = array_create(max(_len, 0));

for (i = 0; i < _len; i++) {
	__drop[n++] = _arr[i];
}

return __drop;
