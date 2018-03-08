/// @desc Reverses a given input array
/// @param {Array} array The array to reverse
/// @returns {Array} The reversed array
/*
@example
var myArray = [1, 2, 3];
var reverseArray = _reverse(myArray);
// => [3, 2, 1]
*/

var result;
var n = array_length_1d(argument0);

for (var i = 0; i < n; i++) {
	result[i] = argument0[@ n-1-i];
}

return result;
