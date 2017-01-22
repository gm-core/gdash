/*
Destroys the passed in instance

@param {Instance} The instance to destroy

@example
_destroy(obj_enemy);

// Destroy all obj_enemy with no health (hasNoHealth is a script)
_map(_filter(_collect(obj_enemy)), hasNoHealth), _destroy);
*/

with (argument0) {
    instance_destroy();
}

