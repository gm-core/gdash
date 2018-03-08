/// @desc Returns an array of all objects of the provided type
/// @param {ObjectType} objectType The object type to collect
/// @returns {Array} An array of all object IDs of the provided type in the room
/*
@example

_collect(obj_character);
// => [10001, 10002, 10005]
*/

var result;

for (var i = instance_number(argument0); i >= 0; i--) {
    result[i] = instance_find(argument0, i);
}

return result;

