/// @desc Returns a collection where values of the input collection are truthy when run through the provided function.
/// @param {Array|ds_list} collection The collection to filter
/// @param {Script} filterScript The script to filter with
/// @returns {Array|ds_list} The filtered collection
/// Note: Returns the same type as the given collection. Creates a new list if the collection is a list.
///       the original collection will not be destroyed, so if you pass in a list, you will still need to destroy it.
/*
@example
_filter(_arrayOf(0, 1, 2, 3), lessThanTwo)
// => [0, 1]

*/

var result;
var collection = argument0;
var j = 0;
var n = _length(collection);
var type = _typeOf(collection);

if (type == "real") {
    result = ds_list_create();
    for (var i = 0; i < n; i++) {
        if (_run(argument1, collection[| i])) {
            result[| j] = collection[| i];
            j++;
        }    
    }
} else if (type == "array") {
    for (var i = 0; i < n; i++) {
        if (_run(argument1, collection[@ i])) {
            result[j] = collection[@ i];
            j++;
        }    
    }
} else {
    show_error("Cannot filter type: " + type + "\nCollection must be an array or ds_list", false);
}

return result;

