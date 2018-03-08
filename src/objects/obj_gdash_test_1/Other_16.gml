/// @desc _uniq
test_start("_uniq", "Removes duplicate values from an array");

var duped = [1, 1, 2, 2, "hello", "hello", 3];
var unique = [1, 2, "hello", 3];

assert_is_true(_is_equal(_uniq(duped), unique));

test_end();

