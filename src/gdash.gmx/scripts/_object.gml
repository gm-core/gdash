/*
Returns a blank object

To use this function, make an object resource called _gdash_object

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

