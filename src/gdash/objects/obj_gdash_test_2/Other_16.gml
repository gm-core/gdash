/// _partial and _run
test_start("_partial and _run", "returns a partial which can be executed with _run");

var add_one = _partial(__add, 1);

var two = _run(add_one, 1);
var three = _run(add_one, 2);

assert_equal(two, 2);
assert_equal(three, 3);

_free(add_one);

test_end();