/*
Iterates over a given collection, running the provided function for each
value in the collection. Returns an array of all function results at each
index.

@param {Array|DS_Map|DS_List} The collection to map
@param {Script} The script to map over the collection
@param {ds_type|String} ["array"] The type of collection. Only provide when using a DS
@returns {Array} An array of all mapped results

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

if (argument_count == 3) {
    type = argument[2];
}

var resultArray;

if (_isEqual(type, "array")) {
    for (var i = 0; i < _length(collection); i++) {
        resultArray[i] = _run(func, collection[i], i);
    }
    
    return resultArray;
} else if (_isEqual(type, ds_type_map)) {
    var keys = _keys(collection);
    for (var i = 0; i < _length(keys); i++) {
        resultArray[i] = _run(func, ds_map_find_value(collection, keys[i]), keys[i]);
    }
    return resultArray;
} else if (_isEqual(type, ds_type_list)) {
    for (var i = 0; i < _length(collection); i++) {
        resultArray[i] = _run(func, ds_list_find_value(collection, i), i);
    }
    return resultArray;
}


