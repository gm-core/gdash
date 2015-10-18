/*
Checks if two values are equal, being safe about type and checking first-level
children of ds_lists and ds_maps. Returns false on type inequality rather than
throwing an error.

@param {*} First value to compare
@param {*} Second value to compare
@param {ds_type} [Optional] If specified, assumes this type instead of inferring
                            the type. Only specify this if using _isEqual for a ds
@returns {Boolean} true if the values are equal, false otherwise

@example

_isEqual([1, 2, 3], [1, 2, 3]);
// => true

_isEqual("hello", 1);
// => false

var map = ds_map_create();
ds_map_add(map, 'hello', 6);
ds_map_add(map, 'world', 10);
var map2 = ds_map_create();
ds_map_add(map2, 'hello', 6);
ds_map_add(map2, 'world', 10);
_isEqual(map, map2, ds_type_map);
// => true

*/

var compareA = argument[0];
var compareB = argument[1];
var type;

if (argument_count == 3) {
    type = argument[2];
} else {
    if (_typeOf(compareA) != _typeOf(compareB)) {
        return false;
    } else {
        if (_typeOf(compareA) == "array") {
            if (_length(compareA) != _length(compareB)) {
                return false;
            }
            
            for (var i = 0; i < _length(compareA); i++) {
                if (!_isEqual(compareA[i], compareB[i])) {
                    return false;
                }
            }
            return true;
        } else {
            return compareA == compareB;
        }
    }
}

if (type == ds_type_map) {
    var aKeys = _keys(compareA);
    var bKeys = _keys(compareB);
    if (!_isEqual(aKeys, bKeys)) {
        return false;
    }
    
    for (var i = 0; i < _length(aKeys); i++) {
        if (!_isEqual(ds_map_find_value(compareA, aKeys[i]), ds_map_find_value(compareB, aKeys[i]))) {
            return false;
        }
    }
    
    return true;
} else if (type == ds_type_list) {
    if (!_isEqual(ds_list_size(compareA), ds_list_size(compareB))) {
        return false;
    }
    
    for (var i = 0; i < ds_list_size(compareA); i++) {
        if (!_isEqual(ds_list_find_value(compareA, i), ds_list_find_value(compareB, i))) {
            return false;
        }
    }
    
    return true;
    
}

