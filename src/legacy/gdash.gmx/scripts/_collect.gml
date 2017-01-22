/*
Returns an array of all objects of the provided type

@param {ObjectType} The object type to collect
@returns {Array} An array of all object IDs of the provided type in the room

@example

_collect(obj_character);
// => [10001, 10002, 10005]
*/
var result;
var i = 0;

with (argument0) {
    result[i] = id;
    i++;
}

return result;

