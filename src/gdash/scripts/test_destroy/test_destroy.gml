gml_pragma("global", "test_destroy()");

function test_destroy() {
	test_describe("_destroy", function() {
		test_it("destroys a given instance", function() {
			var inst = instance_create_depth(0, 0, 0, obj_example_object);
			_destroy(inst);
			assert_is_false(instance_exists(inst));
		});
	
		test_it("destroys all of an object type", function() {
			repeat (10) {
				instance_create_depth(0, 0, 0, obj_example_object);
			}
		
			_destroy(obj_example_object);
		
			assert_is_false(instance_exists(obj_example_object));
		});
	});
}