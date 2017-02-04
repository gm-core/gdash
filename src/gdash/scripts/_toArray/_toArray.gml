/// @desc Converts the given ds_list to an array
/// @param list

var list = argument0;
var listSize = ds_list_size(list);
var array;

for (var i = listSize - 1; i >= 0; i--) {
    array[i] = list[| i];
}

return array;