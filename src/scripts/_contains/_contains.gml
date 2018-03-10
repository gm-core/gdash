/// @func _contains(collection, target [, fromIndex, dsType])
/// @desc Returns true if the given array contains the given value
/// @param {String|Array|DS_Map|DS_List} collection The collection to search
/// @param {*} value The value to look for
/// @param {Real} optionalFromIndex [0] The index to begin looking from
/// @param {ds_type} optionalDSType [ds_type_list] The type of the ds, if this is a ds.
/// @returns {Boolean} True if the collection contains the target, otherwise false
/*
@example
_contains([1, 2, 3], 1);
// => true

_contains([1, 2, 3], 1, 1);
// => false

_contains("hello", "ello");
// => true
*/

var collection = argument[0];
var target = argument[1];
var fromIndex = argument_count > 2 ? argument[2] : 0;
var dsType = argument_count > 3 ? argument[3] : ds_type_list;

if (is_string(collection)) {

    // If it is a string, check to see if the target is in the string.
    return string_count(string(target), collection) > 0;
} else if (is_array(collection)) {

    // If it is an array, check if target exists in the array.
    var n = array_length_1d(collection);
    for (var i = fromIndex; i < n; i++) {
        if (_type_of(collection[@ i]) == _type_of(target) && collection[@ i] == target) {
            return true;
        }
    }
    return false;
} else if (is_real(collection)) {
    if (dsType == ds_type_map) {
        var keys = _keys(collection);
        var n = array_length_1d(keys);
        for (var i = fromIndex; i < n; i++) {
            var thisValue = collection[? keys[i]];
            if (_type_of(thisValue) == _type_of(target) && thisValue == target) {
                return true;
            }
        }
        return false;
    } else if (dsType == ds_type_list) {
        return ds_list_find_index(collection, target) != -1;
    } else {
        show_error("Cannot look for value in ds type: " + string(dsType) + "\nIf using _contains with a data structure, it must be a list or map.", false);
    }
} else if (is_undefined(collection)) {
    return false;
} else {
    // Catch case for unknown collection
    show_error("Cannot look for value in type: " + _type_of(collection) + "\nCollection must be a string, array, map or list.", false);
}

return false;
