/// _push
describe("_push", "Adds an element to an array");

var arr = _arrayOf(0, 1, 2);
assert(_length(arr), 3);

arr = _push(arr, 3);
assert(_length(arr), 4);
assert(arr[3], 3);

test_end();

