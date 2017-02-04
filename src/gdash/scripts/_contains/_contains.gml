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
var fromIndex = 0;

// TODO: This should default to ds_type_list in the next major version
var dsType = ds_type_map;

if (argument_count > 2) {
    fromIndex = argument[2];
}

if (argument_count > 3) {
    dsType = argument[3];
}

if (is_string(collection)) {

    // If it is a string, check to see if the target is in the string.
    return string_count(string(target), collection) > 0;
} else if (is_array(collection)) {

    // If it is an array, check if target exists in the array.
    var n = _length(collection);
    for (var i = fromIndex; i < n; i++) {
        if (_typeOf(collection[@ i]) == _typeOf(target) && collection[@ i] == target) {
            return true;
        }
    }
    return false;
} else if (is_real(collection)) {
    if (dsType == ds_type_map) {
        var keys = _keys(collection);
        var n = _length(keys);
        for (var i = fromIndex; i < n; i++) {
            var thisValue = collection[? keys[i]];
            if (_typeOf(thisValue) == _typeOf(target) && thisValue == target) {
                return true;
            }
        }
        return false;
    } else if (dsType == ds_type_list) {
        var n = _length(collection);
        for (var i = fromIndex; i < n; i++) {
            var thisValue = collection[| i];
            if (_typeOf(thisValue) == _typeOf(target) && thisValue == target) {
                return true;
            }
        }
    } else {
        show_error("Cannot look for value in ds type: " + string(dsType) + "\nIf using _contains with a data structure, it must be a list or map.", false);
    }
} else if (is_undefined(collection)) {
    return false;
} else {
    // Catch case for unknown collection
    show_error("Cannot look for value in type: " + _typeOf(collection) + "\nCollection must be a string, array, map or list.", false);
}

return false;
