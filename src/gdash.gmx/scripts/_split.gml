/*
Returns an array of strings represnting the given string
separated by a given substring

@param {String} The string to split
@param {String} The character to split by
@returns {Array} The split string

@example
_split('Hello, world', ',');
// => ['Hello', ' world']

_split('Dogs and cats and mice', ' and ');
// => ['Dogs', 'cats', 'mice']
*/

var inputString = argument0;
var splitter = argument1;
var splitterLength = _length(splitter);
var output;
var count = 0;

while (string_pos(splitter, inputString) > 0) {
    var splitterLocation = string_pos(splitter, inputString);
    var part = string_copy(inputString, 1, splitterLocation - 1);
    output[count] = part;
    count++;
    inputString = string_delete(inputString, 1, splitterLocation + _length(splitter) - 1);
}

output[count] = inputString;
return output;

