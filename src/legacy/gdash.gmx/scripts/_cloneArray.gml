/*
Clones a given input array, returning a deep copy.

@param {Array} The array to clone
@returns {Array} A copy of the input array

@example
var myArray = _arrayOf(1, 2, 3);
var copyArray = _cloneArray(myArray);
_isEqual(myArray, copyArray)
// => true
*/

var inputArray = argument0;

var outputArray;
outputArray[0] = -1;

for (var i = 0; i < _length(inputArray); i++) {
    outputArray[i] = inputArray[i];
}

return outputArray;
