/// @func _drop(array, n)
/// @desc Creates a slice of array with n elements dropped from the beginning.
/// @param {Array} array The array to inspect
/// @param {Integer} n The number of elements to drop
/// @returns {Array} The slice of array
/*
@example
var arr = [0, 1, 2, 3];
_drop(arr, 2);
// => [2, 3];
*/

var i;
var n;
var arr;
var len;
var num;
var result;

arr = argument0;
num = argument1;

if (num == 0) return arr;

n = 0;
len = array_length_1d(arr);
result = array_create(clamp(len - num, 0, len));

for (i = num; i < len; i++) {
	result[n++] = arr[i];
}

return result;
