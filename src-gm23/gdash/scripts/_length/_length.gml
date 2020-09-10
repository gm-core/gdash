/// @func _length(collectionOrString)
/// @desc Returns the length of the given array or ds_list
/// @param {Array|DS_List} collection The collection to determine the length of
/// @returns {Real} The length of the collection
function _length(collectionOrString) {
	/*
	@example
	_length([1, 2, 3, 4]);
	// => 4

	_length(some_list_id_of_size_5);
	// => 5
	*/

	if (is_undefined(collectionOrString)) {
	    return 0;
	}

	if (_type_of(collectionOrString) == "array") {
	    return array_length(collectionOrString);
	} else if (_type_of(collectionOrString) == "real" && ds_exists(collectionOrString, ds_type_list)) {
	    return ds_list_size(collectionOrString);
	} else if (_type_of(collectionOrString) == "string") {
	    return string_length(collectionOrString);
	}

	return 0;
}
