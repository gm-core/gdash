/*
Returns an array with all duplicate values removed

@param {Array} An array with duplicate values
@returns {Array} An array with the duplicate values removed

@example
_uniq(_arrayOf(1, 1, 2, 3));
// => [1, 2, 3]
*/

var arr = argument0;
var result = undefined;

for (var i = 0; i < _length(arr); i++) {
    if (!_contains(result, arr[i])) {
        result = _push(result, arr[i]);
    }
}

return result;


