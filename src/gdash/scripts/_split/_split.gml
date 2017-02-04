/// @desc Returns an array of strings represnting the given string separated by a given substring
/// @param {String} string The string to split
/// @param {String} splitChar The character to split by
/// @returns {Array} The split string
/*
@example
_split('Hello, world', ',');
// => ['Hello', ' world']

_split('Dogs and cats and mice', ' and ');
// => ['Dogs', 'cats', 'mice']
*/

var inputString = argument0;
var splitter = argument1;
var splitterLength = _length(splitter);
var result;
var splitterLocation;
var part;
var count = 0;

while (string_pos(splitter, inputString) > 0) {
    splitterLocation = string_pos(splitter, inputString);
    part = string_copy(inputString, 1, splitterLocation - 1);
    result[count] = part;
    count++;
    inputString = string_delete(inputString, 1, splitterLocation + _length(splitter) - 1);
}

result[count] = inputString;
return result;

