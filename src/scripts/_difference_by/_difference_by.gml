/// @func _difference_by(array, [arrays], iteratee)
/// @desc Like _difference(), except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which they are compared.
/// @param {Array} array The array to inspect
/// @param {Array} [arrays] The arrays whose values are to be excluded
/// @param {Script} iteratee The script invoked on each element to generate comparison criteria
/// @returns {Array} The difference between the first and the remaining arrays
/*
@example
// _floor(x)
return floor(x);

var arr0 = _array_of(0.5, 1, 2);
var arr1 = _array_of(0);
var arr2 = _array_of(0.1, 2.9);
_difference_by(arr0, arr1, arr2, _floor);
// => [1];
*/

if (argument_count == 0) return array_create(0);
if (argument_count == 1) return argument[0];

var i;
var j;
var n;
var _arr;
var _crit;
var _iter;
var _len;
var _set;
var __diff;

_iter = argument[argument_count - 1];
_set  = ds_map_create();

for (i = 1; i < argument_count; i++) {
    _arr = argument[i];
    _len = array_length_1d(_arr);
    for (j = 0; j < _len; j++) {
		_crit = script_execute(_iter, _arr[j]);
        if (_set[? _crit] != 1) {
            _set[? _crit] = 1;
        }
    }
}

n = 0;
_arr = argument[0];
_len = array_length_1d(_arr);
__diff = array_create(0);

for (i = 0; i < _len; i++) {
	_crit = script_execute(_iter, _arr[i]);
	if (_set[? _crit] != 1) {
		__diff[n++] = _arr[i];	
	}
}

ds_map_destroy(_set);
return __diff;
