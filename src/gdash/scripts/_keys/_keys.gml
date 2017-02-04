/// @desc Returns an array contains all keys in a ds_map. Order is not guaranteed due to how ds_maps are stored.
/// @param {DS_Map} map The map to get the keys from
/// @returns {Array} An array of all keys in the map
/*
@example
var map = ds_map_create();
ds_map_add(map, 'hello', 'world');
ds_map_add(map, 'health', 100);

_keys(map);
// => ['hello', 'health']

*/

var map = argument0;
var nextKey = ds_map_find_first(map);
var nextInd = 0;
var keys;

while (!is_undefined(nextKey)) {
    keys[nextInd++] = nextKey;
    nextKey = ds_map_find_next(map, nextKey);
}

return keys;

