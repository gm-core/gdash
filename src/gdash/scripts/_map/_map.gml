/// @desc Iterates over a given collection, running the provided function for each value in the collection. Returns an array of all function results at each index.
/// @param {Array|DS_Map|DS_List} collection The collection to map
/// @param {Script} script The script to map over the collection
/// @param {ds_type|String} optionalType ["array"] The type of collection. Only provide when using a DS
/// @returns {Array} An array of all mapped results
/*
@example

var arr;
arr[0] = 1; arr[1] = 2;
_map(arr, doubleValue);
// => [2, 4];

var map = ds_map_create();
ds_map_add(map, 'hello', 6);
ds_map_add(map, 'world', 10);
_map(map, divideByTwo, ds_type_map);
// => [3, 5]
*/

var collection = argument[0];
var func = argument[1];
var type = "array";
var result;

if (argument_count == 3) {
    type = argument[2];
}

if (_isEqual(type, "array")) {
    for (var i = _length(collection)-1; i >= 0; i--) {
        result[i] = _run(func, collection[@ i], i);
    }
    
    return result;
} else if (_isEqual(type, ds_type_map)) {
    var keys = _keys(collection);
    for (var i = _length(keys)-1; i >= 0; i--) {
        result[i] = _run(func, ds_map_find_value(collection, keys[i]), keys[i]);
    }
    return result;
} else if (_isEqual(type, ds_type_list)) {
    for (var i = _length(collection)-1; i >= 0; i--) {
        result[i] = _run(func, ds_list_find_value(collection, i), i);
    }
    return result;
}


