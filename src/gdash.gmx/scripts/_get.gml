/*
Gets a nested value following a dot notation

@param {DS_Map} The map to get data from
@param {String} The location of the data to get
@returns {Mixed} The data found at the given location

@example
// someMap looks like:
// { nested: {three: {deep: 1}}}
_.get(someMap, 'nested.three.deep');
// => 1

*/

var map = argument0;
var location = argument1;
var locationArray = _split(location, '.');

var temp = map;
for (var i = 0; i < _length(locationArray); i++) {
    var thisLoc = locationArray[i];
    if (ds_map_exists(temp, thisLoc)) {
        temp = temp[? thisLoc];
    } else {
        return undefined;
    }
}

return temp;

