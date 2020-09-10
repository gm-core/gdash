/// @func _get(map, locationString)
/// @desc Gets a nested value following a dot notation
/// @param {DS_Map} map The map to get data from
/// @param {String} locationString The location of the data to get
/// @returns {Mixed} The data found at the given location
function _get(map, location) {
	/*
	@example
	// someMap looks like:
	// { nested: {three: {deep: 1}}}
	_.get(someMap, 'nested.three.deep');
	// => 1

	*/

	var locationArray = _split(location, ".");
	var n = array_length(locationArray);
	var thisLoc;

	for (var i = 0; i < n; i++) {
	    thisLoc = locationArray[i];
	    if (ds_map_exists(map, thisLoc)) {
	        map = map[? thisLoc];
	    } else {
	        return undefined;
	    }
	}

	return map;
}
