/// @description _map_of
test_start("_map_of", "returns a map of the given parameters, paired as key/value");
var res = _map_of(
    "hello", 1,
    "world", 2,
    "test", 3
);

assert_is_true(ds_exists(res, ds_type_map));
assert_equal(res[? "hello"], 1);
assert_equal(res[? "world"], 2);
assert_equal(res[? "test"], 3);

ds_map_destroy(res);

// Odd argument count - fails with empty map
res = _map_of(1);
assert_is_true(ds_exists(res, ds_type_map));
assert_equal(_length(_keys(res)), 0);
ds_map_destroy(res);

test_end();