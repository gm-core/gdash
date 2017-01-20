/// _typeOf
describe("_typeOf", "Should return the type of any known data type");

assert(_typeOf(100), "real");
assert(_typeOf("hello"), "string");
assert(_typeOf(undefined), "undefined");

test_end();

