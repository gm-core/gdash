/// @func _map(collection, method [, ds_type])
/// @desc Iterates over a given collection, running the provided method for each value in the collection. Returns an array of all method results at each index.
/// @param {Array|DS_Map|DS_List} collection The collection to map
/// @param {Method} method The method to map over the collection
/// @param {ds_type|String} optionalType ["array"] The type of collection. Only provide when using a DS
/// @returns {Array} An array of all mapped results
function _map() {
	/*
	@example
	var arr;
	arr[0] = 1; arr[1] = 2;
	_map(arr, doubleValue);
	// => [2, 4];
	var map = ds_map_create();
	ds_map_add(map, 'hello', 6);
	ds_map_add(map, 'world', 10);
	_map(map, divideByTwo, ds_type_map);
	// => [3, 5]
	*/

	var collection = argument[0];
	var func = argument[1];
	var type = "array";
	var result = [];

	if (argument_count == 3) {
	    type = argument[2];
	}

	if (_is_equal(type, "array")) {
	    for (var i = array_length(collection)-1; i >= 0; i--) {
	        result[i] = _run(func, collection[@ i], i);
	    }
    
	    return result;
	} else if (_is_equal(type, ds_type_map)) {
	    var keys = _keys(collection);
	    for (var i = array_length(keys) - 1; i >= 0; i--) {
	        result[i] = _run(func, ds_map_find_value(collection, keys[i]), keys[i]);
	    }
	    return result;
	} else if (_is_equal(type, ds_type_list)) {
	    for (var i = ds_list_size(collection) - 1; i >= 0; i--) {
	        result[i] = _run(func, ds_list_find_value(collection, i), i);
	    }
	    return result;
	}
}