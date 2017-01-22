/*
Returns an array where values of the input array are truthy when run through
the provided function.

@param {Array} The array to filter
@param {Script} The script to filter with
@returns {Array} The filtered array

@example
_filter(_arrayOf(0, 1, 2, 3), lessThanTwo)
// => [0, 1]

*/

var array = argument[0];
var func = argument[1];
var result = undefined;
var resultCount = 0;

for (var i = 0; i < _length(array); i++) {
    if (_run(func, array[i])) {
        result[resultCount] = array[i];
        resultCount++;
    }    
}

return result;

