/// _concat
describe("_concat", "Appends one array to another");

var arr1 = _arrayOf(0, 1, 2);
var arr2 = _arrayOf(30, 40, 50);

var res = _concat(arr1, arr2);

assert(_length(res), 6);

assert(res[0], 0);
assert(res[1], 1);
assert(res[2], 2);
assert(res[3], 30);
assert(res[4], 40);
assert(res[5], 50);
test_end();

