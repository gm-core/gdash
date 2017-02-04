/// _reduce
test_start("_reduce", "Iterates over an array, calling a function, returning the overall result");

var arr;
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;
arr[3] = 4;
arr[4] = 5;

assert_equal(_reduce(arr, __sum), 15);

var list = ds_list_create();
list[| 0] = 1;
list[| 1] = 2;
list[| 2] = 3;
list[| 3] = 4;
list[| 4] = 5;

assert_equal(_reduce(list, __sum), 15);

test_end();

