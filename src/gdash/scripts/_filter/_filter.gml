/// @desc Returns an array where values of the input array are truthy when run through the provided function.
/// @param {Array} inputArray The array to filter
/// @param {Script} filterScript The script to filter with
/// @returns {Array} The filtered array
/*
@example
_filter(_arrayOf(0, 1, 2, 3), lessThanTwo)
// => [0, 1]

*/

var result;
var j = 0;
var n = _length(argument0);

for (var i = 0; i < n; i++) {
    if (_run(argument1, argument0[@ i])) {
        result[j] = argument0[@ i];
        j++;
    }    
}

return result;

