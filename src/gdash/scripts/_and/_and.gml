/// @func _and(valueA, valueB)
/// @desc Returns the value of the provided arguments after a boolean and
/// @param {*} valueA Some first input
/// @param {*} valueB A value to && the first input with
/// @returns {Boolean} The value of the provided arguments after an &&
function _and(valueA, valueB) {
	/*
	@example
	_and(true, true);
	// => true

	_and(false, true);
	// => false

	*/
	gml_pragma("forceinline");
	return valueA && valueB;
}
