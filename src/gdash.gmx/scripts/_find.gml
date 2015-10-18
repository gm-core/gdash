/*
Iterates over an array, returning the first element that the
given script returns true for.

@param {Array} The array to iterate over
@param {Script} The script to run on the given element
@returns {*} The first element that returns truthy from the script

@example
_find(_arrayOf(0, 1, 2, 3), __equalsThree);
// => 3
*/

for (var i = 0; i < _length(argument0); i++) {
    if (_run(argument1, argument0[i])) {
        return argument0[i];
    }
}

