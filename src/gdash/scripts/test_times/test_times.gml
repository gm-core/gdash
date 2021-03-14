gml_pragma("global", "test_times()");

function test_times() {
	test_describe("_times", function() {
		test_it("returns an array of the given function result several times", function() {
			assert_is_true(_is_equal(_times(3, function() {return 1;}), [1, 1, 1]));
		});
	});
}
