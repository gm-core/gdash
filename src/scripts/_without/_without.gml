/// @func _without(array, [values])
/// @desc Creates an array excluding all given values from amongst the elements of the given array
/// @param {Array} array The array to inspect
/// @param {*} [values] The values to exclude
/// @returns {Array} The array of filtered elements
/*
@example
var arr = _array_of(0, 1, 0, 2);
_without(arr, 0, 1);
// => [2];
*/

if (argument_count == 0) return array_create(0);
if (argument_count == 1) return argument[0];

var i;
var j;
var n;
var _arr;
var _match;
var _len;
var __without;

n = 0;
_arr = argument[0];
_len = array_length_1d(_arr);
__without = array_create(0);

for (i = 0; i < _len; i++) {
	_match = false;
	for (j = 1; j < argument_count; j++) {
		if (_arr[i] == argument[j]) {
			_match = true;
		}
	}
	if (!_match) {
		__without[n++] = _arr[i];
	}
}

return __without;
