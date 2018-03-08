/// @desc Returns an array of the given arguments.
/// @param {*) values... Values to put into an array
/// @returns {Array} An array of the given parameters
/*
@example
_arrayOf(1, 2, 3);
// => [1, 2, 3];

_arrayOf('hello', 'world', 'i', 'am', 'an', 'array');
// => ['hello', 'world', 'i', 'am', 'an', 'array'];
*/

var result;

for (i = argument_count-1; i >= 0; i--) {
    result[i] = argument[i];
}

return result;
