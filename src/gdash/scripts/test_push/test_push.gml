gml_pragma("global", "test_push()");

function test_push(){
	test_describe("_push", function() {
		test_it("appends a value to an array and returns the array", function() {
			var arr = [1];
			var result = _push(arr, 2);
			assert_is_true(_is_equal(result, [1, 2]));
		});
		
		test_it("modifies the input array", function() {
			var arr = [1];
			_push(arr, 2);
			assert_is_true(_is_equal(arr, [1, 2]));
		});
	});
}