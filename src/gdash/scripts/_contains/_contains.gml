/// @func _contains(collection, target [, fromIndex, dsType])
/// @desc Returns true if the given array contains the given value, otherwise returns false
/// @param {String|Array|DS_Map|DS_List} collection The collection to search
/// @param {*} value The value to look for
/// @param {Real} optionalFromIndex [0] The index to begin looking from
/// @param {ds_type} optionalDSType [ds_type_list] The type of the ds, if this is a ds.
/// @returns {Boolean} True if the collection contains the target, otherwise false
function _contains() {
	/*
	@example
	_contains([1, 2, 3], 1);
	// => true

	_contains([1, 2, 3], 1, 1);
	// => false

	_contains("hello", "ello");
	// => true
	*/

	var collection = argument[0];
	var target = argument[1];
	var fromIndex = argument_count > 2 ? argument[2] : 0;
	var dsType = argument_count > 3 ? argument[3] : ds_type_list;
	var collectionType = typeof(collection);

	// Prepare collection if fromIndex is specified for array or list
	if (fromIndex != 0) {
	    if (collectionType == "array") {
	        if (fromIndex > array_length(collection)) {
	            return false;
	        }
	        collection = _slice(collection, fromIndex);
	    } else if (collectionType == "number" && dsType == ds_type_list) {
	        if (fromIndex > ds_list_size(collection)) {
	            return false;
	        }
	        var inCollection = collection;
	        collection = ds_list_create();
	        ds_list_copy(collection, inCollection);
	        for (var i = 0; i < fromIndex; i++) {
	            ds_list_delete(collection, 0);
	        }
	    } else if (collectionType == "string") {
	        if (fromIndex > string_length(collection)) {
	            return false;
	        }
	        collection = string_delete(collection, 1, fromIndex);
	    }
	}

	if (collectionType == "string") {
	    return string_count(string(target), collection) > 0;
	} else if (collectionType == "array") {    
	    var asList = _to_list(collection);
	    var found = ds_list_find_index(asList, target);
	    ds_list_destroy(asList);
	    return found != -1;
	} else if (collectionType == "number") {
	    if (dsType == ds_type_map) {
	        var keys = _keys(collection);
	        var n = array_length(keys);

	        if (fromIndex > n) {
	            return false;
	        }

	        for (var i = fromIndex; i < n; i++) {
	            var thisValue = collection[? keys[i]];
	            if (typeof(thisValue) == typeof(target) && thisValue == target) {
	                return true;
	            }
	        }
	        return false;
	    } else if (dsType == ds_type_list) {
	        var found = ds_list_find_index(collection, target) != -1;
	        if (fromIndex != 0) {
	            ds_list_destroy(collection);
	        }
	        return found;
	    } else {
	        show_error("Cannot look for value in ds type: " + string(dsType) + "\nIf using _contains with a data structure, it must be a list or map.", false);
	        return false;
	    }
	} else if (is_undefined(collection)) {
	    return false;
	} else {
	    // Catch case for unknown collection
	    show_error("Cannot look for value in type: " + typeof(collection) + "\nCollection must be a string, array, map or list.", false);
	    return false;
	}

	return false;
}
