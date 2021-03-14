gml_pragma("global", "test_partial_and_run()");

function test_partial_and_run(){
	test_describe("_partial and _run", function() {
		test_it("can create and execute a partial function", function() {
			var lessThan = function(a, b) { return b < a; };
			
			var lessThanTwo = _partial(lessThan, 2);
			
			assert_is_true(_run(lessThanTwo, 1));
			assert_is_false(_run(lessThanTwo, 2));
			
			_free(lessThanTwo);
		});
	});
}