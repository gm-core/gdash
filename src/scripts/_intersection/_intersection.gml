/// @func _intersection([arrays])
/// @desc Creates an array of unique values common to all given arrays in the order in which they originally appeared.
/// @param {Array} [arrays] The remaining arrays to be intersected
/// @returns {Array} The intersection of the given arrays
/*
@example
var arr0 = _array_of(0, 1);
var arr1 = _array_of(0);
_intersection(arr0, arr1);
// => [0];

var arr0 = _array_of('Sword', 'Potion');
var arr1 = _array_of('Shield', 'Potion', 'Sword');
_intersection(arr0, arr1);
// => ['Sword', 'Potion'];
*/

if (argument_count == 0) return array_create(0);
if (argument_count == 1) return argument[0];

var i;
var j;
var n;
var _arr;
var _len;
var _set;
var __intersection;

_set = ds_map_create();

for (i = 1; i < argument_count; i++) {
    _arr = argument[i];
    _len = array_length_1d(_arr);
    for (j = 0; j < _len; j++) {
        if (i == 1 || set[? _arr[j]] == i - 1) {
            _set[? _arr[j]] = i;
        }
    }
}

n    = 0;
_arr = argument[0];
_len = array_length_1d(_arr);
__intersection = array_create(0);

for (i = 0; i < _len; i++) {
    if (_set[? _arr[i]] == argument_count - 1) {
        _set[? _arr[i]]++;
        __intersection[n++] = _arr[i];
    }
}

ds_map_destroy(_set);
return __intersection;
