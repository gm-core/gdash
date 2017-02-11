/// @desc Reverses a given input array
/// @param {Array} array The array to reverse
/// @returns {Array} The reversed array
/*
@example
var myArray = _arrayOf(1, 2, 3);
var reverseArray = _reverse(myArray);
_isEqual(_arrayOf(3,2,1), reverseArray)
// => true
*/

var result;
var n = _length(argument0)

for(var i = 0; i < n; i++) {
	result[i] = argument0[@ n-1-i];
}

return result;
