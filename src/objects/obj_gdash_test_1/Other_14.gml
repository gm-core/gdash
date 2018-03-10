/// @desc _reduce
test_start("_reduce", "Iterates over an array, calling a function, returning the overall result");

var arr = [1, 2, 3, 4, 5];

assert_equal(_reduce(arr, sum), 15);

var list = ds_list_create();
list[| 0] = 1;
list[| 1] = 2;
list[| 2] = 3;
list[| 3] = 4;
list[| 4] = 5;

assert_equal(_reduce(list, sum), 15);

assert_equal(_reduce(arr, sum, 10), 25);

test_end();

