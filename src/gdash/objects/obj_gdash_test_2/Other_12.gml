/// _destroy
test_start("_destroy", "destroys the given object")

instance_create_depth(0, 0, 0, obj_example_object);

_destroy(obj_example_object);

assert_does_not_exist(obj_example_object);

test_end();