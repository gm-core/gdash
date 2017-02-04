/// @descSets a nested value following a dot notation. Creates along the way if its not set.
/// @param {DS_Map} map The map to set data in
/// @param {String} locationString The location of the data to set
/// @param {Mixed} value The data to set
/*
@example
// someMap looks like:
// { nested: {three: {deep: 1}}}
_.set(someMap, 'nested.three.deep', 2);
// => someMap now looks like:
// => {nested: {three: {deep: 2}}}

*/

var map = argument0;
var location = argument1;
var value = argument2;
var locationArray = _split(location, ".");
var n = _length(locationArray);
var finalLocation = locationArray[n - 1];
var thisLoc;
var prev;

for (var i = 0; i < n - 1; i++) {
    thisLoc = locationArray[i];
    prev = map;
    map = map[? thisLoc];
    if (is_undefined(map)) {
        ds_map_add_map(prev, thisLoc, ds_map_create());
        map = prev[? thisLoc];
    }
}

map[? finalLocation] = value;

