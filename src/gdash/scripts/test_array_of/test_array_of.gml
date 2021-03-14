gml_pragma("global", "test_array_of()");

function test_array_of(){
	test_describe("_array_of", function() {
		test_it("creates an array of the arguments passed", function() {
			var result = _array_of(1, 2, 3, "hello", "world", false);
			var expected = [1, 2, 3, "hello", "world", false];
			
			assert_is_true(_is_equal(result, expected));
		});
	});
}