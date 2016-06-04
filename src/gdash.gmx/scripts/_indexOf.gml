/*
Returns the index of the given item in the given array, or -1

@param {Array|DS_LIST} The collection to search
@param {*} The value to look for

@returns {Real} The index of the value, or -1

@example
var arr = _arrayOf(1, 2, 3, 4);
_indexOf(arr, 3);
// => 2

var list = ds_list_create();
ds_list_add(list, 'hello', 'world', 3, true);
_indexOf(list, 'world');
// => 1

var arr = _arrayOf(1, 2, 3, 4);
_indexOf(arr, 5);
// => -1

*/
var collection = argument0;
var search = argument1;

if (_typeOf(collection) == "real" && ds_exists(collection, ds_type_list)) {
    return ds_list_find_index(collection, search);
}

for (var i = 0; i < _length(collection); i++) {
    if (_isEqual(collection[i], search)) {
        return i;
    }
}

return -1;

