/*
Adds a value to the end of an array

@param {Array} The array to add the value to
@param {*} The value to add
@returns {Array} The array with the value added

@example
_push(_arrayOf(1, 2), 3);
// => [1, 2, 3]
*/

var arr = argument0;
var addMe = argument1;

arr[_length(arr)] = addMe;
return arr;

