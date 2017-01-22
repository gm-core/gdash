/*
Returns an array of the given arguments.

@param 0-14 {*) Values to put into an array
@returns {Array} An array of the given parameters

@example
_arrayOf(1, 2, 3);
// => [1, 2, 3];

_arrayOf('hello', 'world', 'i', 'am', 'an', 'array');
// => ['hello', 'world', 'i', 'am', 'an', 'array'];
*/

var arr;
for (i = 0; i < argument_count; i++) {
    arr[i] = argument[i];
}

return arr;

