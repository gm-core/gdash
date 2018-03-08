/// @desc Returns the nth index of the given array or ds_list. If n is negative, the nth element from the end is returned.
/// @param collection
/// @param n

var collection = argument0;
var n = argument1;
var type = _typeOf(collection);


if (type == "real") {
    if (n >= 0) {
        return collection[| n];
    } else {
        return collection[| ds_list_size(collection) + n];
    }
} else if (type == "array") {
    if (n >= 0) {
        return collection[@ n];
    } else {
        return collection[@ array_length_1d(collection) + n];
    }
} else {
    show_error("Trying to return nth element of an incorrect type: " + type + "\nCollection must be a ds_list or array.", false);
}