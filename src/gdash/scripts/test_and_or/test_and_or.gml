gml_pragma("global", "test_and_or()");

function test_and_or(){
	test_describe("_and", function() {
		test_it("returns the logical `and` of the inputs", function() {
			assert_is_true(_and(true, true));
			assert_is_false(_and(true, false));
			assert_is_false(_and(false, true));
			assert_is_false(_and(false, false));
		});
	});
	
	test_describe("_or", function() {
		test_it("returns the logical `or` of the inputs", function() {
			assert_is_true(_or(true, true));
			assert_is_true(_or(true, false));
			assert_is_true(_or(false, true));
			assert_is_false(_or(false, false));
		});
	});
}