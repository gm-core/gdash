/// @func _fill(array, value, [start], [end])
/// @desc Fills elements of array with value from start up to, but not including, end.
/// @param {Array} array The array to fill
/// @param {*} value The value with which to fill elements of array
/// @param {Integer} [start] The start index
/// @param {Integer} [end] The end index
/// @returns {Array} The filled array
/// @note This method mutates array.
/*
@example
var arr = _arrayOf(0, 1, 2, 3);
_fill(arr, 4, 1, 3);
// => [0, 4, 4, 3];

var arr = _arrayOf(0, 1, 2, 3);
_fill(arr, 0);
// => [0, 0, 0, 0];
*/

var i;
var _arr;
var _end;

if (argument_count == 2) {
    i    = 0;
    _end = array_length_1d(argument[0]);
} else if (argument_count == 4) {
    i    = argument[2];
    _end = argument[3];
} else return false;

_arr = argument[0];

for (; i < _end; i++) {
    _arr[@ i] = argument[1];
}

return _arr;
