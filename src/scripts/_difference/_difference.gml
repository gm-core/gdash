/// @func _difference(array, [arrays])
/// @desc Creates an array of values from the first array not found in the other arrays.
/// @param {Array} array The array to inspect
/// @param {Array} [arrays] The arrays whose values are to be excluded
/// @returns {Array} The difference between the first and the remaining arrays
/*
@example
var arr0 = _array_of(0, 1, 2);
var arr1 = _array_of(0);
var arr2 = _array_of(0, 2);
_difference(arr0, arr1, arr2);
// => [1];
*/

if (argument_count == 0) return array_create(0);
if (argument_count == 1) return argument[0];

var i;
var j;
var n;
var _arr;
var _len;
var _set;
var __diff;

_set = ds_map_create();

for (i = 1; i < argument_count; i++) {
    _arr = argument[i];
    _len = array_length_1d(_arr);
    for (j = 0; j < _len; j++) {
        if (_set[? _arr[j]] != 1) {
            _set[? _arr[j]] = 1;
        }
    }
}

n = 0;
_arr = argument[0];
_len = array_length_1d(_arr);
__diff = array_create(0);

for (i = 0; i < _len; i++) {
	if (_set[? _arr[i]] != 1) {
		__diff[n++] = _arr[i];	
	}
}

ds_map_destroy(_set);
return __diff;
