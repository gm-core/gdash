/// @func _chunk(array, size)
/// @desc Creates a two-dimensional array of elements split into groups of given length.
/// @param {Array} array The array to split
/// @param {Integer} size The size of each chunk
/// @returns {Array} The two-dimensional array of chunks
/*
@example
var arr = _arrayOf(0, 1, 2, 3);
_chunk(arr, 2);
// => [[0, 1], [2, 3]];

var arr = _arrayOf(0, 1, 2, 3);
_chunk(arr, 3);
// => [[0, 1, 2], [3]];
*/

if (argument_count != 2) return false;
if (argument1 == 0) return _arrayOf();

var i;
var _len;
var __chunk;

_len = array_length_1d(argument0);

for (i = 0; i < _len; i++) {
    __chunk[i div argument1, i mod argument1] = argument0[i];
}

return __chunk;
