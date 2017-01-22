/// @desc Gets a nested value following a dot notation
/// @param {DS_Map} map The map to get data from
/// @param {String} locationString The location of the data to get
/// @returns {Mixed} The data found at the given location
/*
@example
// someMap looks like:
// { nested: {three: {deep: 1}}}
_.get(someMap, 'nested.three.deep');
// => 1

*/

var 
location = argument1,
locationArray = _split(location, '.'),
map = argument0, 
n = _length(locationArray),
thisLoc;

for (var i = 0; i < n; i++) {
    thisLoc = locationArray[i];
    if (ds_map_exists(temp, thisLoc)) {
        map = map[? thisLoc];
    } else {
        return undefined;
    }
}

return map;

