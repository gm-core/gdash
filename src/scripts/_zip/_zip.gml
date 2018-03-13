/// @func _zip([arrays])
/// @desc Creates a two-dimensional array of grouped elements, the first of which contains the first elements of the given arrays, the second of which contains the second elements of the given arrays, and so on.
/// @param {Array} [arrays] The remaining arrays
/// @returns {Array} The array of elements grouped in arrays
/*
@example
var arr0 = _arrayOf(0, 1);
var arr1 = _arrayOf('Sword', 'Shield');
var arr2 = _arrayOf(true, false);
_zip(arr0, arr1, arr2);
// => [[0, 'Sword', true], [1, 'Shield', false]];

var arr0 = _arrayOf(0, 1, 2);
var arr1 = _arrayOf(3, 4, 5);
_zip(arr0, arr1);
// => [[0, 3], [1, 4], [2, 5]];
*/

if (argument_count == 0) return array_create(0);

var i;
var j;
var _arr;
var _len;
var __zip;

_len = array_length_1d(argument[0]);
for (i = 1; i < argument_count; i++)
    _len = max(_len, array_length_1d(argument[i]));
__zip = array_create(0);
    
for (i = 0; i < _len; i++) {
    for (j = 0; j < argument_count; j++) {
        _arr = argument[j];        
        if (i >= array_length_1d(_arr)) continue;
        __zip[i, j] = _arr[i];
    }
}

return __zip;
