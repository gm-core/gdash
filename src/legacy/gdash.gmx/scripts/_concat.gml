/*
Appends the values of one array to another.

@param {Array} The array to append to
@param {Array} The array to append
@returns {Array} The concatenated array

@example
_concat(_arrayOf(0, 1, 2), _arrayOf(3, 4, 5));
// => [0, 1, 2, 3, 4, 5]

*/

var inputArray = argument[0];
var appendArray = argument[1];
var i = _length(inputArray),
var n = 0;

repeat (_length(appendArray)) {
    inputArray[i] = appendArray[n];
    n++;
    i++;
}

return inputArray;

