/// @desc Returns an array of the result of a function run the given number of times
/// @param {Real} executeCount The number of times to execute the function
/// @param {Script} script The script to execute
/// @returns {Array} An array of the script results
/*
@example
_times(3, returnTheValue5);
// => [5, 5, 5];

*/

var count = argument0;
var func = argument1;
var arr;

arr[count-1] = 0;

for (var i = 0; i < count; i++) {
    arr[i] = _run(func, i);
}

return arr;

