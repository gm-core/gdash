gml_pragma("global", "test_map()");

function test_map(){
	test_describe("_map", function() {
		test_it("can map a function over an array and return the resulting mapped array", function() {
			var input = [1, 2, 3];
			var double = function(a) { return a * 2; };
			
			var result = _map(input, double);
			
			assert_is_true(_is_equal(result, [2, 4, 6]));
		});
		
		test_it("can map over a ds_list and return the resulting mapped array", function() {
			var input = ds_list_create();
			ds_list_add(input, 1, 2, 3);
			var double = function(a) { return a * 2; };
			
			var result = _map(input, double, ds_type_list);
			ds_list_destroy(input);
			
			assert_is_true(_is_equal(result, [2, 4, 6]));
		});
		
		test_it("can map over a ds_maps values and return the resulting mapped array", function() {
			// NOTE: order not guaranteed
			var double = function(a) { return a * 2; };
			var input = ds_map_create();
			input[? "a"] = 1;
			input[? "b"] = 2;
			input[? "c"] = 3;
			
			var result = _map(input, double, ds_type_map);
			ds_map_destroy(input);
			
			assert_equal(array_length(result), 3);
			assert_is_true(_contains(result, 2));
			assert_is_true(_contains(result, 4));
			assert_is_true(_contains(result, 6));
		});
	});
}