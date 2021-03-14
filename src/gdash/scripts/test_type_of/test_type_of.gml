gml_pragma("global", "test_type_of()");

function test_type_of() {
	test_describe("_type_of", function() {
		test_it("identifies types and uses 'real' instead of 'number'", function() {
			assert_equal(_type_of(1), "real");
			assert_equal(_type_of("hello"), "string");
			assert_equal(_type_of(undefined), "undefined");
		});
	});
}