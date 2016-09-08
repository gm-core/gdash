/*
Sets a nested value following a dot notation
Creates along the way if its not set

@param {DS_Map} The map to set data in
@param {String} The location of the data to set
@param {Mixed} The data to set

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
var locationArray = _split(location, '.');
var finalLocation = locationArray[_length(locationArray) - 1];

var temp = map;
for (var i = 0; i < _length(locationArray) - 1; i++) {
    var thisLoc = locationArray[i];
    var prev = temp;
    temp = temp[? thisLoc];
    if (is_undefined(temp)) {
        ds_map_add_map(prev, thisLoc, ds_map_create());
        temp = prev[? thisLoc];
    }
}

temp[? finalLocation] = value;

