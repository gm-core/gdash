/// @desc Returns the value of the provided arguments after a boolean OR
/// @param {*} valueA Some first input
/// @param {*} valueB A value to || the first input with
/// @returns {Boolean} The value of the provided arguments after an ||
/*
@example
_or(true, true);
// => true

_or(false, true);
// => true

_or(false, false);
// => false

*/
gml_pragma("forceinline");
return argument0 || argument1;

