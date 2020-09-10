/// @func _run(methodOrPartial, arguments...)
/// @desc Executes a method or partial with the provided arguments
/// @param {Method|Real} methodOrPartial The method to run or the ID of the partial to run
/// @param {*} arguments... Arguments to pass the method or partial
/// @returns {*} The return value of the execution
function _run() {
	/*
	@example
	_run(_add, 1, 2);
	// => 3

	var addTwo = _partial(_add, 2);
	_run(addTwo, 1);
	// => 3
	*/

	var func = argument[0];
	var args = undefined;

	for (var i = argument_count-1; i >= 1; i--) {
	    args[i - 1] = argument[i];
	}

	// Check if func is a partial (map with 'partial' set to 'partial');
	if (_type_of(func) == "real" && ds_exists(func, ds_type_map) && _is_equal(ds_map_find_value(func, "partial"), "partial")) {
	    var partialId = func;
	    func = ds_map_find_value(partialId, "function");
	    args = _concat(ds_map_find_value(partialId, "args"), args);
	}

	return _spread(func, args);
}
