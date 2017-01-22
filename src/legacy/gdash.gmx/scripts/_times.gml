/*
Returns an array of the result of a function run the given number of times

@param {Real} The number of times to execute the function
@param {Script} The script to execute
@returns {Array} An array of the script results

@example
_times(3, returnTheValue5);
// => [5, 5, 5];

*/
var count = argument[0];
var func = argument[1];

var arr;

for (var i = 0; i < count; i++) {
    arr[i] = _run(func, i);
}

return arr;

