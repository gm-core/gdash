/// @func _intersection_by([arrays], iteratee)
/// @desc Like _intersection(), except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which uniqueness is computed.
/// @param {Array} [arrays] The arrays to be intersected
/// @param {Script} iteratee The script invoked on each element to generate uniqueness criteria
/// @returns {Array} The intersection of the given arrays
/*
@example
// _floor(x)
return floor(x);

var arr0 = _array_of(0, 1.9);
var arr1 = _array_of(0.6, 3);
_intersection_by(arr0, arr1, _floor);
// => [0];
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
var __intersection;

_iter = argument[argument_count - 1];
_set = ds_map_create();

for (i = 1; i < argument_count; i++) {
    _arr = argument[i];
    _len = array_length_1d(_arr);
    for (j = 0; j < _len; j++) {
		_crit = script_execute(_iter, _arr[j]);
        if (i == 1 || set[? _crit] == i - 1) {
            _set[? _crit] = i;
        }
    }
}

n    = 0;
_arr = argument[0];
_len = array_length_1d(_arr);
__intersection = array_create(0);

for (i = 0; i < _len; i++) {
	_crit = script_execute(_iter, _arr[i]);
    if (_set[? _crit] == argument_count - 2) {
        _set[? _crit]++;
        __intersection[n++] = _arr[i];
    }
}

ds_map_destroy(_set);
return __intersection;
