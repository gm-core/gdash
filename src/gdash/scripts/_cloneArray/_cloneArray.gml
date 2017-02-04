/// @desc Clones a given input array, returning a deep copy.
/// @param {Array} array The array to clone
/// @returns {Array} A copy of the input array
/*
@example
var myArray = _arrayOf(1, 2, 3);
var copyArray = _cloneArray(myArray);
_isEqual(myArray, copyArray)
// => true
*/

// Abuse GML array copy into script mechanics.
/// Note, maybe switch to GMS2 new method: array_copy?

var result = argument0;

result[0] = result[0]; // this forces a copy    
return result;
