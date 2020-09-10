/// @func _length(collectionOrString)
/// @desc Returns the length of the given array or ds_list
/// @param {Array|DS_List} collection The collection to determine the length of
/// @returns {Real} The length of the collection
function _length(argument0) {
	/*
	@example
	_length([1, 2, 3, 4]);
	// => 4

	_length(some_list_id_of_size_5);
	// => 5
	*/

	if (is_undefined(argument0)) {
	    return 0;
	}

	if (_type_of(argument0) == "array") {
	    return array_length(argument0);
	} else if (_type_of(argument0) == "real" && ds_exists(argument0, ds_type_list)) {
	    return ds_list_size(argument0);
	} else if (_type_of(argument0) == "string") {
	    return string_length(argument0);
	}

	return 0;




}
