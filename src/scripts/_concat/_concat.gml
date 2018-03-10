/// @func _concat(arrayA, arrayB)
/// @desc Appends the values of one array to another.
/// @param {Array} baseArray The array to append to
/// @param {Array} arrayToAppend The array to append
/// @returns {Array} The concatenated array
/*
@example
_concat([0, 1, 2], [3, 4, 5]);
// => [0, 1, 2, 3, 4, 5]

*/

var n = array_length_1d(argument0);
var arr = _clone_array(argument0);

for (var i = array_length_1d(argument1) - 1; i >= 0; i--) {
    arr[@ n+i] = argument1[@ i]; 
}

return arr;