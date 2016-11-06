/*
Returns the index of the given item in the given array, or -1

@param {Array|DS_List} The collection to search
@param {*} The value to look for

@returns {Real} The index of the value, or -1
*/
var collection = argument0;
var search = argument1;

// Search lists
if (is_real(collection)) {
    return ds_list_find_index(collection, search);
}

// Search arrays
for (var i = 0; i < _length(collection); i++) {
    if (_isEqual(collection[i], search)) {
        return i;
    }
}

return -1;

