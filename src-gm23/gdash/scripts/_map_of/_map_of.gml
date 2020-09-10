/// @func _map_of(values...)
/// @desc Returns a DS_Map containing the provided values. Arguments are split into key/value pairs in the order they are provided.
/// @note This script must take an even number of arguments. Keys can only be integers or strings.
/// @param {*} values... As many starting values for the map as desired
/// @returns {DS_Map} A new DS_Map containing the provided key/value pairs
function _map_of() {
	/*
	@example

	var map = _map_of(
	    "health", 100,
	    "mana", 20,
	    "level", 1
	);

	map[? "health"] // = 100
	map[? "mana"] // = 20
	map[? "level"] // = 1

	*/

	if (argument_count % 2 != 0) {
	    _error("_map_of must take an even number of arguments. This call will return an empty map.", false);
	    return ds_map_create();
	}

	// Ensure keys are integers or strings
	for (var i = 0; i < argument_count; i += 2) {
	    var key = argument[i];
	    var type = typeof(key);
	    if (type != "number" && type != "string") {
	        _error("_map_of must take keys that are strings or integers. This call will return an empty map.\nOffending key: " + string(key), false);
	        return ds_map_create();
	    }
	}

	var map = ds_map_create();

	for (var i = 0; i < argument_count; i++) {
	    var key = argument[i++];
	    var value = argument[i];
	    map[? key] = value;
	}

	return map;
}
