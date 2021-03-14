gml_pragma("global", "test_collect()");

function test_collect() {
	test_describe("_collect", function() {
		test_it("returns an array of the collected object", function() {
			instance_destroy(obj_example_object);
			var inst1 = instance_create_depth(0, 0, 0, obj_example_object);
			var inst2 = instance_create_depth(0, 0, 0, obj_example_object);
			var inst3 = instance_create_depth(0, 0, 0, obj_example_object);
			
			var result = _collect(obj_example_object);
			assert_equal(array_length(result), 3);
			assert_is_true(_contains(result, inst1));
			assert_is_true(_contains(result, inst2));
			assert_is_true(_contains(result, inst3));
		});
	});
}