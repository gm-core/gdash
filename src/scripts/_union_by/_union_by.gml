/// @func _union_by([arrays], iteratee)
/// @desc Like _union(), except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which uniqueness is computed.
/// @param {Array} [arrays] The arrays to be unioned
/// @param {Script} iteratee The script invoked on each element to generate uniqueness criteria
/// @returns {Array} The union of the given arrays
/*
@example
// _floor(x)
return floor(x);

var arr0 = _arrayOf(0.5, 1.2);
var arr1 = _arrayOf(0, 1.9);
_union_by(arr0, arr1, _floor);
// => [0.5, 1.2];
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
var __union;

n = 0;
_iter = argument[argument_count - 1];
_set  = ds_map_create();
__union = array_create(0);

for (i = 0; i < argument_count; i++) {
    _arr = argument[i];
    _len = array_length_1d(_arr);
    for (j = 0; j < _len; j++) {
		_crit = script_execute(_iter, _arr[j]);
        if (_set[? _crit] != 1) {
            _set[? _crit] = 1;
            __union[n++] = _arr[j];
        }
    }
}

ds_map_destroy(_set);
return __union;
