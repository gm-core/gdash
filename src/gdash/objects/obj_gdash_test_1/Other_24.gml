/// _cloneArray
describe("_cloneArray", "Returns a clone of the given array");

var arr = _arrayOf(2, 1, 5, 4, 6);
var cloned = _cloneArray(arr);

for (var i = 0; i < array_length_1d(arr); i++) {
    assert(cloned[i], arr[i]);
}

test_end();
game_end();

