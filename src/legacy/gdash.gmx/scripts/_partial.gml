/*
Creates a partial function identifier for use in place of raw scripts
in gdash functions, or with the use of _run.

Partials are to be treated as a data structure, and must be cleaned up
with _free() when they are no longer of use.

@param {Script} The script to create a partial of
@param 1-14 {*} Arguments to bind to the partial
@returns {Real} The partial ID (a ds_map, internally)

@example
// Script: lessThan
return argument1 < argument0

// Meanwhile...
var __lessThanTwo = _partial(lessThan, 2);
__lessThanTwo(1);
// => true

__lessThanTwo(10);
// => false

*/
var func = argument[0];
var args;
for (var i = 1; i < argument_count; i++) {
    args[i - 1] = argument[i];
}

var partial = ds_map_create();
ds_map_add(partial, 'function', func);
ds_map_add(partial, 'args', args);
ds_map_add(partial, 'partial', 'partial');

return partial;

