/// @desc Appends the values of one array to another.
/// @param {Array} baseArray The array to append to
/// @param {Array} arrayToAppend The array to append
/// @returns {Array} The concatenated array
/*
@example
_concat(_arrayOf(0, 1, 2), _arrayOf(3, 4, 5));
// => [0, 1, 2, 3, 4, 5]

*/

var n = _length(argument0);
var arr = _cloneArray(argument0);

for (var i = _length(argument1) - 1; i >= 0; i--) {
    arr[@ n+i] = argument1[@ i]; 
}

return arr;