/// @func _drop(array, n)
/// @desc Creates a slice of array with n elements dropped from the beginning.
/// @param {Array} array The array to inspect
/// @param {Integer} n The number of elements to drop
/// @returns {Array} The slice of array
/*
@example
var arr = _array_of(0, 1, 2, 3);
_drop(arr, 2);
// => [2, 3];
*/

if (argument1 == 0) return argument0;

var i;
var n;
var _arr;
var _len;
var _num;
var __drop;

n = 0;
_arr = argument0;
_len = array_length_1d(_arr);
_num = argument1;
__drop = array_create(clamp(_len - _num, 0, _len));

for (i = _num; i < _len; i++) {
	__drop[n++] = _arr[i];
}

return __drop;
