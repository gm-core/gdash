/// @desc Returns the variable type of the given argument
/// @param {*} value A variable to check the type of
/// @returns {String} The type of the variable as a human readable string
/*
@example

_type_of(1);
// => "real"

_type_of("hello");
// => "string"

var arr;
arr[0] = 1; arr[1] = 2;
_type_of(arr);
// => "array"

_type_of(undefined);
// => "undefined";

_type_of(sprite_get_texture(spr_player, 1));
// => "pointer";
*/

if (is_string(argument0)) {
    return "string";
} else if (is_array(argument0)) {
    return "array";
} else if (is_ptr(argument0)) {
    return "pointer";
} else if (is_undefined(argument0)) {
    return "undefined";
} else if (is_real(argument0)) {
    return "real";
}