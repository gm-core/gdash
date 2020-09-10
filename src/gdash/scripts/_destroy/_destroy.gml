/// @func _destroy(object)
/// @desc Destroys the passed in instance
/// @param {Instance} instance The instance to destroy
function _destroy(object) {
	/*
	@example
	_destroy(obj_enemy);

	// Destroy all obj_enemy with no health (hasNoHealth is a script)
	_map(_filter(_collect(obj_enemy)), hasNoHealth), _destroy);
	*/

	with (object) {
	    instance_destroy();
	}
}
