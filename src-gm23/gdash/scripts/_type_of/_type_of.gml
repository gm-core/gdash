/// @func _type_of(value)
/// @desc Returns the variable type of the given argument as a string.
/// @note Works exactly as the native typeof(), though refers to `number` as `real` to be more consistent with GM:S terminology
/// @param {*} value A variable to check the type of
/// @returns {String} The type of the variable as a human readable string
function _type_of(value) {
	/*
	@example

	_type_of(1);
	// => "real"

	_type_of("hello");
	// => "string"

	var arr;
	arr[0] = 1; arr[1] = 2;
	_type_of(arr);
	// => "array"

	_type_of(undefined);
	// => "undefined";

	_type_of(sprite_get_texture(spr_player, 1));
	// => "ptr";
	*/

	var type = typeof(value)
	return type == "number" ? "real" : type;


}
