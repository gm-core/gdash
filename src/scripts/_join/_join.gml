/// @desc Returns a string of the given array combined with the given joiner
/// @param {Array} array The array to join
/// @param {String} joinChar The character to join by
/// @returns {String} The joined array
/*
@example
var arr = _arrayOf('hello', 'world');
_join(arr, ' ');
// => 'hello world'

var arr = _arrayOf('Peter', 'Paul', 'Mary');
_join(arr, ', ');
// => 'Peter, Paul, Mary';
*/

var outString = "";
var inArray = argument0;
var joiner = argument1;

var arrLength = _length(inArray);
var maxIndex = arrLength - 1;
var stringJoiner = string(joiner);

for (var i = 0; i < arrLength; i++) {
    outString += string(inArray[@ i]);
    
    if (i != maxIndex) {
        outString += stringJoiner;
    }
}

return outString;


