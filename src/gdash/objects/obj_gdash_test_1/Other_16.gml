/// @desc _uniq
test_start("_uniq", "Removes duplicate values from an array");

var duped = [1, 1, 2, 2, "hello", "hello", 3];
var unique = [1, 2, "hello", 3];

assert_is_true(_is_equal(_uniq(duped), unique));

duped = [1, 2, 3, 4, 1, 2, 100, 200, 300, 400, 300, "hello", "world", "hello"];
unique = [1, 2, 3, 4, 100, 200, 300, 400, "hello", "world"];

assert_is_true(_is_equal(_uniq(duped), unique));

test_end();

