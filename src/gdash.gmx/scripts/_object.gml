// Creates a generic object and returns it.
// If given a boolean of true, makes the object persistant

/*
Returns a blank object

@param {String} A category to set on this object as the `type` variable
@returns {Instance} A blank object instance

@example
var data = _object('test');
data.hello = 'world';
show_debug_message(data.type);
// => prints "test"
*/
var obj = instance_create(0, 0, _gdash_object);

if (argument_count == 1) {
    obj.type = argument0;
}

return obj;

