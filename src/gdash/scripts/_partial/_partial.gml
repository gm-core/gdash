/// @func _partial(method, partialArgs...)
/// @desc Creates a partial function identifier for use in place of raw scripts in gdash functions, or with the use of `_run`.
/// @note Partials are to be treated as a data structure, and must be cleaned up with _free() when they are no longer of use.
/// @param {Method} method The script to create a partial of
/// @param {*} partialArguments... Arguments to bind to the partial
/// @returns {Real} The partial ID (a ds_map, internally)
function _partial() {
	/*
	@example
	function lessThan(a, b) {
		return b < a
	}

	// Meanwhile...
	var lessThanTwo = _partial(lessThan, 2);
	_run(lessThanTwo, 1);
	// => true

	_run(lessThanTwo, 10);
	// => false

	*/

	var func = argument[0];
	var partial = ds_map_create();
	var args;

	for (var i = argument_count-1; i >= 1; i--) {
	    args[i - 1] = argument[i];
	}

	ds_map_add(partial, "function", func);
	ds_map_add(partial, "args", args);
	ds_map_add(partial, "partial", "partial");

	return partial;
}
