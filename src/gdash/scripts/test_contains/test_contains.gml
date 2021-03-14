gml_pragma("global", "test_contains()");

function test_contains() {
	test_describe("_contains", function() {
		test_it("returns true when an array contains a member", function() {
			assert_is_true(_contains([1, 2, 3], 1));
			assert_is_true(_contains(["hello", "world"], "world"));
		});
		
		test_it("returns false when an array doesn't contain a member", function() {
			assert_is_false(_contains([1, 2, 3], 4));
			assert_is_false(_contains(["hello", "world"], "foo"));
		});
		
		test_it("can check strings", function() {
			assert_is_true(_contains("hello", "h"));
			assert_is_false(_contains("hello", "g"));
		});
		
		test_it("can check ds_maps", function() {
			var map = ds_map_create();
			map[? "key"] = "value";
			
			assert_is_true(_contains(map, "value", 0, ds_type_map));
			assert_is_false(_contains(map, "bar", 0, ds_type_map));
			
			ds_map_destroy(map);
		});
		
		test_it("can check ds_lists", function() {
			var list = ds_list_create();
			list[| 0] = "hello";
			
			assert_is_true(_contains(list, "hello", 0, ds_type_list));
			assert_is_false(_contains(list, "world", 0, ds_type_list));
		});
	});
}