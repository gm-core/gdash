/// @desc Reduces a collection by iterating over it with a function. Provided script should take 2 arguments: total, value. On the first call, total is undefined.
/// @param {Array} inputArray The array to reduce
/// @param {Script} recuderScript The script to reduce with
/// @returns {*} The reduced value from the given script
/*
@example
var arr = _arrayOf(1, 2, 3, 4, 5);
_reduce(arr, sum);
// => 15

var arr = _arrayOf('hello', 'world');
_reduce(arr, concat);
// => 'helloworld';
*/

var 
array = argument[0],
func = argument[1],
result = undefined,
n = _length(array);

for (var i = 0; i < n; i++) {
    result = _run(func, result, array[@ i]);
}

return result;

