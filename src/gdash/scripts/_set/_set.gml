/// @func _set(map, locationString, value)
/// @desc Sets a nested value following a dot notation. Creates along the way if its not set.
/// @param {DS_Map} map The map to set data in
/// @param {String} locationString The location of the data to set
/// @param {Mixed} value The data to set
/// @param {ds_type_map|ds_type_list} optionalType Optional argument, pass in ds_type_map or ds_type_list to denote this value as a map or list
function _set() {
	/*
	@example
	// someMap looks like:
	//  { nested: {three: {deep: 1}}}
	_set(someMap, 'nested.three.deep', 2);
	// => someMap now looks like:
	// => {nested: {three: {deep: 2}}}

	// some map looks like:
	// { someKey: "someValue" }
	_set(someMap, "newKey", ds_list_create(), ds_type_list);
	// => someMap now looks like:
	// => { someKey: "someValue"], newKey: [] }

	*/

	var map = argument[0];
	var location = argument[1];
	var value = argument[2];
	var type = -10;

	if (argument_count > 3) {
	    type = argument[3];
	}

	var locationArray = _split(location, ".");
	var n = array_length(locationArray);
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

	if (type == -10) {
	    map[? finalLocation] = value;
	} else if (type == ds_type_map) {
	    ds_map_add_map(map, finalLocation, value);
	} else if (type == ds_type_list) {
	    ds_map_add_list(map, finalLocation, value);
	} else {
	    show_error("Unknown type for _set: " + string(type), false);
	}




}
