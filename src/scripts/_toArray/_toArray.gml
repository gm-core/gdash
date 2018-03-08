/// @desc Converts the given ds_list to an array
/// @param list
/// Note: If the given list is of size 0, this will return undefined.

var list = argument0;
var listSize = ds_list_size(list);
var array;
array[0] = undefined;

for (var i = listSize - 1; i >= 0; i--) {
    array[i] = list[| i];
}

if (is_undefined(array[0])) {
    return undefined;
}

return array;