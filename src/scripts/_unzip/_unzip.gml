/// @func _unzip(array)
/// @desc From a zipped two-dimensional array, creates a collection of grouped elements by regrouping the elements to their pre-zipped configuration 
/// @param {Array} array The zipped two-dimensional array
/// @returns {Array} The two-dimensional array of regrouped elements
/*
@example
var arr0 = _arrayOf(0, 1, 2);
var arr1 = _arrayOf(3, 4, 5);
var arr2 =_zip(arr0, arr1);
_unzip(arr2);
// => [[0, 1, 2], [3, 4, 5]];

*/

if (argument_count != 1) return array_create(0);

var i;
var j;
var _len;
var _num;
var __unzip;

_len = array_length_1d(argument0);
_num = array_length_2d(argument0, 0);
__unzip = array_create(_num);

for (i = 0; i < _num; i++) {
    for (j = 0; j < _len; j++) {
        if (j >= array_length_2d(argument0, i)) continue;
        __unzip[i, j] = argument0[j, i];
    }
}

return __unzip;
