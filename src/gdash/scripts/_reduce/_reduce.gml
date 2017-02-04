/// @desc Reduces a collection by iterating over it with a function. Provided script should take 2 arguments: total, value. On the first call, total is undefined.
/// @param {Array|ds_list} collection The collection to reduce
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

var collection = argument[0];
var func = argument[1];
var result = undefined;
var n = _length(collection);
var type = _typeOf(collection);

if (type == "real") {
    for (var i = 0; i < n; i++) {
        result = _run(func, result, collection[| i]);
    }
} else if (type == "array") {
    for (var i = 0; i < n; i++) {
        result = _run(func, result, collection[@ i]);
    }
} else {
    show_error("Cannot reduce type: " + type + "\nCollection must be an array or ds_list", false);
}

return result;

