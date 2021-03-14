gml_pragma("global", "test_reduce()");

function test_reduce() {
	test_describe("_reduce", function() {
		test_it("can reduce over an array", function() {
			var arr = [1, 2, 3];
			var reducer = function(accum, entry) {
				return accum + entry;
			}
			
			var result = _reduce(arr, reducer, 0);
			assert_equal(result, 6);
		});
		
		test_it("can reduce over a ds_list", function() {
			var list = ds_list_create();
			ds_list_add(list, 1, 2, 3);
			var reducer = function(accum, entry) {
				return accum + entry;
			}
			
			var result = _reduce(list, reducer, 0);
			assert_equal(result, 6);
			
			ds_list_destroy(list);
		});
		
		test_it("throws when reducing a bad data structure", function() {
			var map = ds_map_create();
			assert_throws(function() {
				_reduce(map, function() {}, 0);
			});
			
			ds_map_destroy(map);
		});
		
		test_it("throws when reducing something unreducable", function() {
			assert_throws(function() {
				_reduce(1, function() {}, 0);
			});
			
			assert_throws(function() {
				_reduce(true, function() {}, 0);
			});
			
			assert_throws(function() {
				_reduce("hello", function() {}, 0);
			});
			
			assert_throws(function() {
				_reduce(undefined, function() {}, 0);
			});
		});
	});
}