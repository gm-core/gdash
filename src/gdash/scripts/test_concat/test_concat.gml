gml_pragma("global", "test_concat()");

function test_concat() {
	test_describe("_concat", function() {
		test_it("appends an array to another array", function() {
			var arrA = [1, 2, 3];
			var arrB = [4, 5, 6];
			var expected = [1, 2, 3, 4, 5, 6];
			assert_is_true(_is_equal(_concat(arrA, arrB), expected));
		});
	});
}