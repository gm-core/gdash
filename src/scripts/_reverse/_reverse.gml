/// @func _reverse(array)
/// @desc Reverses the order of elements in a given array.
/// @param {Array} array The array to modify
/// @returns {Array} The reversed array
/// @note This method mutates array.
/*
@example
var arr = _array_of(0, 1, 2);
_reverse(arr);
// => [2, 1, 0];
*/

var i;
var _arr;
var _half;
var _len;
var _tmp;

_arr = argument0;
_len = array_length_1d(_arr);
_half = floor(_len / 2);

for (i = 0; i < _half; i++) {
	_tmp = _arr[@ i];
	_arr[@ i] = _arr[@ _len - 1 - i];
	_arr[@ _len - 1 - i] = _tmp;
}

return _arr;
