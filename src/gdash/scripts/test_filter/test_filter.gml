gml_pragma("global", "test_filter()");

function test_filter() {
	test_describe("_filter", function() {
		test_it("returns an array of only things that pass the filter", function() {
			var input = [1, 2, 3, 4, 5];
			var evens = _filter(input, function(val) { return val % 2 == 0 });
			var odds = _filter(input, function(val) { return val % 2 == 1});
			
			assert_is_true(_is_equal(evens, [2, 4]));
			assert_is_true(_is_equal(odds, [1, 3, 5]));
		});
	
		test_it("returns an empty array when nothing matches", function() {
			var result = _filter([1, 2, 3], function() { return false; });
			assert_equal(array_length(result), 0);
		});
	
		test_it("can filter a ds_list", function() {
			var list = ds_list_create();
			var evenList = ds_list_create();
			var oddList = ds_list_create();
			ds_list_add(list, 1, 2, 3, 4, 5);
			ds_list_add(evenList, 2, 4);
			ds_list_add(oddList, 1, 3, 5);
		
			var evens = _filter(list, function(val) { return val % 2 == 0 });
			var odds = _filter(list, function(val) { return val % 2 == 1});
		
			ds_list_destroy(list);
		
			assert_is_true(_is_equal(evens, evenList, ds_type_list));
			assert_is_true(_is_equal(odds, oddList, ds_type_list));
		
			ds_list_destroy(evenList);
			ds_list_destroy(oddList);
		});
	});
}