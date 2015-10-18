/*
Frees a partial function from memory

@param {Real} The partial ID to free

@example
var __sometihng = _partial(someScript, 1);
__something(2);
_free(__something);

*/
var dsId = argument[0];
var type;

if (argument_count == 1) {
    type = ds_type_map;
} else {
    type = argument[1];
}

if (_isEqual(type, "partial")) {
    type = ds_type_map;
}

switch (type) {
    case ds_type_map:
        ds_map_destroy(dsId);
        break;
    case ds_type_list:
        ds_list_destroy(dsId);
        break;
}

