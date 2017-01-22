/*
Reduces a collection by iterating over it with a function
Provided script should take 2 arguments: total, value
On the first call, total is undefined


@param {Array} The array to reduce
@param {Script} The script to reduce with
@returns {*} The reduced value from the given script

@example
var arr = _arrayOf(1, 2, 3, 4, 5);
_reduce(arr, sum);
// => 15

var arr = _arrayOf('hello', 'world');
_reduce(arr, concat);
// => 'helloworld';
*/

var array = argument[0];
var func = argument[1];

var result = _run(func, undefined, array[0]);

for (var i = 1; i < _length(array); i++) {
    result = _run(func, result, array[i]);
}

return result;

