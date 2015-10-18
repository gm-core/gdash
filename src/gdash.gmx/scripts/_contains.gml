/*
Returns true if the given array contains the given value

@param {String|Array|DS_Map} The collection to search
@param {*} The value to look for
@param {Real} [0] The index to begin looking from
@returns {Boolean} True if the collection contains the target, otherwise false

@example
_contains([1, 2, 3], 1);
// => true

_contains([1, 2, 3], 1, 1);
// => false

_contains("hello", "ello");
// => true
*/

var collection = argument[0];
var target = argument[1]
var fromIndex = 0;

if (argument_count == 3) {
    fromIndex = argument[2];
}

if (is_string(collection)) {

    // If it is a string, check to see if the target is in the string.
    return string_count(string(target), collection) > 0;
} else if (is_array(collection)) {

    // If it is an array, check if target exists in the array.
    for (var i = fromIndex; i < _length(collection); i++) {
        if (_typeOf(collection[i]) == _typeOf(target) && collection[i] == target) {
            return true;
        }
    }
    return false;
} else if (is_real(collection)) {
    
    // If it is a real, assume it is a ds ID.
    if (ds_exists(collection, ds_type_map)) {
        var keys = _keys(collection);
        for (var i = fromIndex; i < _length(keys); i++) {
            var thisValue = ds_map_find_value(collection, keys[i])
            if (_typeOf(thisValue) == _typeOf(target) && thisValue == target) {
                return true;
            }
        }
        return false;
    }
}

