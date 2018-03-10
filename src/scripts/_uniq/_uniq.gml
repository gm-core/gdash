/// @func _uniq(array)
/// @desc Returns an array with all duplicate values removed
/// @param {Array} array An array with duplicate values
/// @returns {Array} An array with the duplicate values removed
/*
@example
_uniq([1, 1, 2, 3]);
// => [1, 2, 3]
*/

var arr = argument0;
var n = array_length_1d(arr);
var j = 0;
var result = undefined;

if (array_length_1d(arr) < 2)
    return arr;

for (var i = 0; i < n; i++) {
    if (!_contains(result, arr[@ i])) {
        result[j++] = arr[@ i];
    }
}

return result;

