/// @func _union([arrays])
/// @desc Creates an array of unique values, in the order in which they originally appeared, from all given arrays.
/// @param {Array} [arrays] The arrays to be unioned
/// @returns {Array} The union of the given arrays
/*
@example
var arr0 = _arrayOf(0, 1);
var arr1 = _arrayOf(0);
_union(arr0, arr1);
// => [0, 1];

var arr0 = _arrayOf('Sword', 'Potion');
var arr1 = _arrayOf('Shield', 'Sword');
_union(arr0, arr1);
// => ['Sword', 'Potion', 'Shield'];
*/

if (argument_count == 0) return array_create(0);
if (argument_count == 1) return argument[0];

var i;
var j;
var n;
var _arr;
var _len;
var _set;
var __union;

n = 0;
_set = ds_map_create();
__union = array_create(0);

for (i = 0; i < argument_count; i++) {
    _arr = argument[i];
    _len = array_length_1d(_arr);
    for (j = 0; j < _len; j++) {
        if (_set[? _arr[j]] != 1) {
            _set[? _arr[j]] = 1;
            __union[n++] = _arr[j];
        }
    }
}

ds_map_destroy(_set);
return __union;