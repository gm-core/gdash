/// _collect
test_start("_collect", "returns an array of instances of the given type");

var firstObj = instance_create_depth(0, 0, 0, obj_example_object);
var secondObj = instance_create_depth(0, 0, 0, obj_example_object);

firstObj.value = 1;
secondObj.value = 2;

var objects = _collect(obj_example_object);

assert_is_true(_contains(objects, firstObj));
assert_is_true(_contains(objects, secondObj));

with (obj_example_object) {
    instance_destroy();
}

test_end();