/// _uniq
describe("_uniq", "Removes duplicate values from an array");

var duped = _arrayOf(1, 1, 2, 2, "hello", "hello", 3);
var unique = _arrayOf(1, 2, "hello", 3);

assert(_isEqual(_uniq(duped), unique));

test_end();

