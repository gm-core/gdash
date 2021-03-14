gml_pragma("global", "test_uniq()");

function test_uniq(){
	test_describe("_uniq", function() {
		test_it("returns an array with no duplicates", function() {
			var input = [1, 1, 2, 2, 3, 3];
			var result = _uniq(input);
			
			assert_equal(array_length(result), 3);
			assert_equal(result[0], 1);
			assert_equal(result[1], 2);
			assert_equal(result[2], 3);
		});
		
		test_it("returns an empty array when given an empty input", function() {
			assert_equal(array_length(_uniq([])), 0);
		});
		
		test_it("can uniq across different types", function() {
			var input = [1, 1, "hello", "world", "hello"];
			var expectedResult = [1, "hello", "world"];
			assert_is_true(_is_equal(_uniq(input), expectedResult));
		});
	});
}