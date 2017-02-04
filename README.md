# gdash - GML utility library

Version 2.1.0

## Introduction

gdash is a functional utility library for GML, inspired by [lodash](https://lodash.com/). It aims to add useful, broad-purposed functions to help aid in game development. If you are doing any kind of data manipulation in your game, gdash can help out.

## Table of Contents

<!-- toc -->

- [Install](#install)
- [API](#api)
  * [`_and(valueA, valueB)`](#_andvaluea-valueb)
  * [`_arrayOf(value1, value2 ... value14)`](#_arrayofvalue1-value2--value14)
  * [`_cloneArray(array)`](#_clonearrayarray)
  * [`_collect(objectType)`](#_collectobjecttype)
  * [`_concat(arrayA, arrayB)`](#_concatarraya-arrayb)
  * [`_contains(collection, target, fromIndex = 0)`](#_containscollection-target-fromindex--0)
  * [`_destroy(instance)`](#_destroyinstance)
  * [`_filter(array, filterScript)`](#_filterarray-filterscript)
  * [`_find(array, findScript)`](#_findarray-findscript)
  * [`_free(resourceId [, dsType])`](#_freeresourceid--dstype)
  * [`_get(mapId, locationString [, default])`](#_getmapid-locationstring--default)
  * [`_indexOf(collection, value)`](#_indexofcollection-value)
  * [`_isEqual(valueA, valueB)`](#_isequalvaluea-valueb)
  * [`_join(array, joiner)`](#_joinarray-joiner)
  * [`_keys(dsMapId)`](#_keysdsmapid)
  * [`_length(collection)`](#_lengthcollection)
  * [`_log(anything)`](#_loganything)
  * [`_map(colletion, mapScript)`](#_mapcolletion-mapscript)
  * [`_nth(collection, n)`](#_nthcollection-n)
  * [`_or(valueA, valueB)`](#_orvaluea-valueb)
  * [`_partial(script, arg0, arg1 ... arg13)`](#_partialscript-arg0-arg1--arg13)
  * [`_push(array, value)`](#_pusharray-value)
  * [`_reduce(collection, reducerScript)`](#_reducecollection-reducerscript)
  * [`_run(script, arg0, arg1 ... arg13)`](#_runscript-arg0-arg1--arg13)
  * [`_set(mapId, locationString, value)`](#_setmapid-locationstring-value)
  * [`_split(string, splitter)`](#_splitstring-splitter)
  * [`_spread(script, argArray)`](#_spreadscript-argarray)
  * [`_times(script)`](#_timesscript)
  * [`_toArray(list)`](#_toarraylist)
  * [`_typeOf(value)`](#_typeofvalue)
  * [`_uniq(array)`](#_uniqarray)

<!-- tocstop -->

## Install

Download [the latest release](https://github.com/twisterghost/gdash/releases) and import the gml files into your project's scripts. For GameMaker: Studio 2, you can just drag and drop the files into the editor.

## API

### `_and(valueA, valueB)`

Returns the value of the provided arguments after a boolean `and`

```
@param {*} Some first input
@param {*} A value to && the first input with
@returns {Boolean} The value of the provided arguments after an &&

@example
_and(true, true);
// => true

_and(false, true);
// => false
```

### `_arrayOf(value1, value2 ... value14)`

Returns an array of the given arguments.

```
@param 0-14 {*) Values to put into an array
@returns {Array} An array of the given parameters

@example
_arrayOf(1, 2, 3);
// => [1, 2, 3];

_arrayOf('hello', 'world', 'i', 'am', 'an', 'array');
// => ['hello', 'world', 'i', 'am', 'an', 'array'];
```

### `_cloneArray(array)`

Clones a given input array, returning a deep copy.

```
@param {Array} The array to clone
@returns {Array} A copy of the input array

@example
var myArray = _arrayOf(1, 2, 3);
var copyArray = _cloneArray(myArray);
_isEqual(myArray, copyArray)
// => true
```

### `_collect(objectType)`

Returns an array of all objects of the provided type in the current room

```
@param {ObjectType} The object type to collect
@returns {Array} An array of all object IDs of the provided type in the room

@example

_collect(obj_character);
// => [10001, 10002, 10005]
```

### `_concat(arrayA, arrayB)`

Appends the values of one array to another.

```
@param {Array} The array to append to
@param {Array} The array to append
@returns {Array} The concatenated array

@example
_concat(_arrayOf(0, 1, 2), _arrayOf(3, 4, 5));
// => [0, 1, 2, 3, 4, 5]
```

### `_contains(collection, target, fromIndex = 0)`

Returns true if the given collection contains the given value

```
@param {String|Array|DS_Map|DS_List} The collection to search
@param {*} The value to look for
@param {Real} [0] The index to begin looking from
@param {ds_type} [ds_type_list] The type of the ds, if this is a ds.
@returns {Boolean} True if the collection contains the target, otherwise false

Note: You only need to specify a ds_type when looking at a ds_list or ds_map.
By default, the ds_type is set to ds_type_map. Options are:

* ds_type_list
* ds_type_map

@example
_contains([1, 2, 3], 1);
// => true

_contains([1, 2, 3], 1, 1);
// => false

_contains("hello", "ello");
// => true
```

### `_destroy(instance)`

Destroys the passed in instance

```
@param {Instance} The instance to destroy

@example
_destroy(obj_enemy);

// Destroy all obj_enemy with no health (hasNoHealth is a script)
_map(_filter(_collect(obj_enemy)), hasNoHealth), _destroy);
```

### `_filter(array, filterScript)`

Returns a a collection where values of the input collection are truthy when run through the provided function.

```
@param {Array|DS_List} The collection to filter
@param {Script} The script to filter with
@returns {Array|DS_List} The filtered collection

@example
_filter(_arrayOf(0, 1, 2, 3), lessThanTwo)
// => [0, 1]
```

### `_find(array, findScript)`

Iterates over an array, returning the first element that the given script returns true for.

```
@param {Array} The array to iterate over
@param {Script} The script to run on the given element
@returns {*} The first element that returns truthy from the script

@example
_find(_arrayOf(0, 1, 2, 3), __equalsThree);
// => 3
```
### `_free(resourceId [, dsType])`

Frees a partial function or ds type from memory. If freeing a ds, you must provide the type (`ds_type_map` or `ds_type_list` supported)

```
@param {Real} The partial ID to free
@param {DS_Type} [Optional] The type of DS to free (ignore for partials)

@example
var __sometihng = _partial(someScript, 1);
__something(2);
_free(__something);
```

### `_get(mapId, locationString [, default])`

Gets a nested value following a dot notation

```
@param {DS_Map} The map to get data from
@param {String} The location of the data to get
@returns {Mixed} The data found at the given location

@example
// someMap looks like:
// { nested: {three: {deep: 1}}}
_get(someMap, 'nested.three.deep');
// => 1
```

### `_indexOf(collection, value)`

Returns the index of the `value` in the `collection`, where `collection` is a ds_list id or array.

Returns `-1` if the value does not exist in the collection.

```
@param {Array|DS_LIST} The collection to search
@param {*} The value to look for

@returns {Real} The index of the value, or -1

@example
var arr = _arrayOf(1, 2, 3, 4);
_indexOf(arr, 3);
// => 2

var list = ds_list_create();
ds_list_add(list, 'hello', 'world', 3, true);
_indexOf(list, 'world');
// => 1

var arr = _arrayOf(1, 2, 3, 4);
_indexOf(arr, 5);
// => -1
```

### `_isEqual(valueA, valueB)`

Checks if two values are equal, being safe about type and checking first-level
children of ds_lists and ds_maps. Returns false on type inequality rather than
throwing an error.

```
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
```

### `_join(array, joiner)`

Returns a string of the given `array` values combined by the `joiner`

```
@param {Array} The array to join
@param {String} The character to join by
@returns {String} The joined array

@example
var arr = _arrayOf('hello', 'world');
_join(arr, ' ');
// => 'hello world'

var arr = _arrayOf('Peter', 'Paul', 'Mary');
_join(arr, ', ');
// => 'Peter, Paul, Mary';
```

### `_keys(dsMapId)`

Returns an array contains all keys in a ds_map. Order is not guaranteed due to how ds_maps are stored

```
@param {DS_Map} The map to get the keys from
@returns {Array} An array of all keys in the map

@example
var map = ds_map_create();
ds_map_add(map, 'hello', 'world');
ds_map_add(map, 'health', 100);

_keys(map);
// => ['hello', 'health']
```

### `_length(collection)`

Returns the length of the given array or ds_list. If the collection is `undefined`, returns 0.

```
@param {Array|DS_List} The collection to determine the length of
@returns {Real} The length of the collection

@example
_length([1, 2, 3, 4]);
// => 4

_length(some_list_id_of_size_5);
// => 5
```

### `_log(anything)`

Convenience method for `show_debug_message()`

Converts its argument to a string.

### `_map(colletion, mapScript)`

Iterates over a given collection, running the provided function for each value in the collection. Returns an array of all function results at each index.

```
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
```

### `_nth(collection, n)`

Returns the nth index of the given array or ds_list. If n is negative, the nth element from the end is returned.

```
@param collection
@param n

@example
var list = ds_list_create();
list[| 0] = "hello"
list[| 1] = "world";
_nth(list, 0);
// => "hello";

_nth(list, -1);
// => "world";
```

### `_or(valueA, valueB)`

Returns the value of the provided arguments after a boolean `or`

```
@param {*} Some first input
@param {*} A value to || the first input with
@returns {Boolean} The value of the provided arguments after an ||

@example
_or(true, true);
// => true

_or(false, true);
// => true

_or(false, false);
// => false
```

### `_partial(script, arg0, arg1 ... arg13)`

Creates a partial function identifier for use in place of raw scripts in gdash functions, or with the use of `_run`.

Partials are to be treated as a data structure, and must be cleaned up with `_free()` when they are no longer of use.

```
@param {Script} The script to create a partial of
@param 1-14 {*} Arguments to bind to the partial
@returns {Real} The partial ID (a ds_map, internally)

@example
// Script: lessThan
return argument1 < argument0

// Meanwhile...
var __lessThanTwo = _partial(lessThan, 2);
__lessThanTwo(1);
// => true

__lessThanTwo(10);
// => false
```

### `_push(array, value)`

Adds a value to the end of an array

```
@param {Array} The array to add the value to
@param {*} The value to add
@returns {Array} The array with the value added

@example
_push(_arrayOf(1, 2), 3);
// => [1, 2, 3]
```

### `_reduce(collection, reducerScript)`

Reduces a collection by iterating over it with a function. Provided script should take 2 arguments: `total`, `value`. On the first call, `total` is `undefined`.

```
@param {Array|DS_List} The collection to reduce
@param {Script} The script to reduce with
@returns {*} The reduced value from the given script

@example
var arr = _arrayOf(1, 2, 3, 4, 5);
_reduce(arr, sum);
// => 15

var arr = _arrayOf('hello', 'world');
_reduce(arr, concat);
// => 'helloworld';
```

### `_run(script, arg0, arg1 ... arg13)`

Executes a script or partial with the provided arguments. Can be used in place of `script_execute`

```
@param {Script|Real} The script to run or the ID of the partial to run
@param 1-14 {*} Arguments to pass the script
@returns {*} The return value of the script

@example
_run(_add, 1, 2);
// => 3

var addTwo = _partial(_add, 2);
_run(addTwo, 1);
// => 3
```

### `_set(mapId, locationString, value)`

Sets a nested value following a dot notation. Creates any necessary maps along the way.

```
@param {DS_Map} The map to set data in
@param {String} The location of the data to set
@param {Mixed} The data to set

@example
// someMap looks like:
// { nested: {three: {deep: 1}}}
_set(someMap, 'nested.three.deep', 2);
// => someMap now looks like:
// => {nested: {three: {deep: 2}}}
```

### `_split(string, splitter)`

Returns an array of the given `string` split by the `splitter`

```
@param {String} The string to split
@param {String} The character to split by
@returns {Array} The split string

@example
_split('Hello, world', ',');
// => ['Hello', ' world']

_split('Dogs and cats and mice', ' and ');
// => ['Dogs', 'cats', 'mice']
```

### `_spread(script, argArray)`

Runs a script with the provided array as arguments.

```
@param {Script} The script to run
@param {Array} An array to provide as individual arguments
@return {*} The return value of the script

@example
_spread(ds_list_add, _arrayOf(listId, 1, 2, 3, 4));
// => List now contains 1, 2, 3, 4
```

### `_times(script)`

Returns an array of the result of a function run the given number of times

```
@param {Real} The number of times to execute the function
@param {Script} The script to execute
@returns {Array} An array of the script results

@example
_times(3, returnTheValue5);
// => [5, 5, 5];
```

### `_toArray(list)`

Returns the given ds_list as an array

```
@param {DS_List} the list to convert
@returns {Array} An array representation of the given list
Note: If the given list is of size 0, this will return undefined
```

### `_typeOf(value)`

Returns the variable type of the given argument

```
@param {*} A variable to check the type of
@returns {String} The type of the variable as a human readable string

@example

_typeOf(1);
// => "real"

_typeOf("hello");
// => "string"

var arr;
arr[0] = 1; arr[1] = 2;
_typeOf(arr);
// => "array"

_typeOf(undefined);
// => "undefined";

_typeOf(sprite_get_texture(spr_player, 1));
// => "pointer";
```

### `_uniq(array)`

Returns an array with all duplicate values removed

```
@param {Array} An array with duplicate values
@returns {Array} An array with the duplicate values removed

@example
_uniq(_arrayOf(1, 1, 2, 3));
// => [1, 2, 3]
```

