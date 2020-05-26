# gdash - GML Utility Library

Version 5.0.0

## Introduction

gdash is a functional utility library for GML, inspired by [lodash](https://lodash.com/). It aims to add useful, broad-purposed functions to help aid in game development. If you are doing any kind of data manipulation in your game, gdash can help out.

### GameMaker Studio 2.3 Beta

The existing gdash functions are compatible with GameMaker Studio 2.3, but with the significant changes to GML in this version, gdash functions will be revised to better suit the language. Core functionality will be revised to center around GM:S2.3 after the 2.3 beta ends and 2.3 becomes the mainline version. Until then, 2.3-beta compatible packages for gdash will be published for version 5.0.0 and above.

## Table of Contents

<!-- toc -->

- [Install](#install)
- [API](#api)
  * [`_and(valueA, valueB)`](#_andvaluea-valueb)
  * [`_array_of(values...)`](#_array_ofvalues)
  * [`_backward(array)`](#_backwardarray)
  * [`_chunk(array, size)`](#_chunkarray-size)
  * [`_clone_array(array)`](#_clone_arrayarray)
  * [`_collect(object)`](#_collectobject)
  * [`_concat(arrayA, arrayB)`](#_concatarraya-arrayb)
  * [`_contains(collection, target [, fromIndex, dsType])`](#_containscollection-target--fromindex-dstype)
  * [`_destroy(object)`](#_destroyobject)
  * [`_difference_by(array, arrays..., iteratee)`](#_difference_byarray-arrays-iteratee)
  * [`_difference(array, arrays...)`](#_differencearray-arrays)
  * [`_drop_right(array, n)`](#_drop_rightarray-n)
  * [`_drop(array, n)`](#_droparray-n)
  * [`_error(message [, fatal])`](#_errormessage--fatal)
  * [`_fill(array, value [, start, end])`](#_fillarray-value--start-end)
  * [`_filter(collection, script)`](#_filtercollection-script)
  * [`_find(array, findScript)`](#_findarray-findscript)
  * [`_free(id [, ds_type])`](#_freeid--ds_type)
  * [`_get(map, locationString)`](#_getmap-locationstring)
  * [`_index_of(collection, value)`](#_index_ofcollection-value)
  * [`_intersection_by(arrays..., iteratee)`](#_intersection_byarrays-iteratee)
  * [`_intersection(arrays...)`](#_intersectionarrays)
  * [`_is_equal(valueA, valueB [, dsType])`](#_is_equalvaluea-valueb--dstype)
  * [`_join(array, joinChar)`](#_joinarray-joinchar)
  * [`_keys(map)`](#_keysmap)
  * [`_length(collectionOrString)`](#_lengthcollectionorstring)
  * [`_list_of(values...)`](#_list_ofvalues)
  * [`_log(values...)`](#_logvalues)
  * [`_map_of(values...)`](#_map_ofvalues)
  * [`_map(collection, script [, ds_type])`](#_mapcollection-script--ds_type)
  * [`_nth(collection, index)`](#_nthcollection-index)
  * [`_or(valueA, valueB)`](#_orvaluea-valueb)
  * [`_partial(script, partialArgs...)`](#_partialscript-partialargs)
  * [`_push(array, value)`](#_pusharray-value)
  * [`_reduce(collection, reducer)`](#_reducecollection-reducer)
  * [`_reverse(array)`](#_reversearray)
  * [`_run(scriptOrPartial, arguments...)`](#_runscriptorpartial-arguments)
  * [`_set(map, locationString, value)`](#_setmap-locationstring-value)
  * [`_slice(array, start [, end])`](#_slicearray-start--end)
  * [`_split(string, splitChar)`](#_splitstring-splitchar)
  * [`_spread(script, argsArray)`](#_spreadscript-argsarray)
  * [`_times(script)`](#_timesscript)
  * [`_to_array(list)`](#_to_arraylist)
  * [`_to_list(array)`](#_to_listarray)
  * [`_type_of(value)`](#_type_ofvalue)
  * [`_union_by(arrays..., iteratee)`](#_union_byarrays-iteratee)
  * [`_union(arrays...)`](#_unionarrays)
  * [`_uniq(array)`](#_uniqarray)
  * [`_unzip(array)`](#_unziparray)
  * [`_without(array, values...)`](#_withoutarray-values)
  * [`_zip(arrays...)`](#_ziparrays)

<!-- tocstop -->

## Install

Download [the latest release](https://github.com/gm-core/gdash/releases) and import the gml files into your project's scripts. For GameMaker: Studio 2, you can just drag and drop the files into the editor.

## API


### `_and(valueA, valueB)`

Returns the value of the provided arguments after a boolean and

```gml
@param {*} valueA Some first input
@param {*} valueB A value to && the first input with

@returns {Boolean} The value of the provided arguments after an &&

@example
_and(true, true);
// => true

_and(false, true);
// => false

```

### `_array_of(values...)`

Returns an array of the given arguments.

```gml
@param {*) values... Values to put into an array

@returns {Array} An array of the given parameters

@example
_arrayOf(1, 2, 3);
// => [1, 2, 3];

_arrayOf('hello', 'world', 'i', 'am', 'an', 'array');
// => ['hello', 'world', 'i', 'am', 'an', 'array'];
```

### `_backward(array)`

Creates a new array containing the elements of array in reverse order.

> *Note*: To modify an array in-place, use `_reverse`

```gml
@param {Array} array The array to reverse

@returns {Array} The reversed array

@example
var myArray = [1, 2, 3];
var reverseArray = _backward(myArray);
// => [3, 2, 1]
```

### `_chunk(array, size)`

Creates a two-dimensional array of elements split into groups of given length.

```gml
@param {Array} array The array to split
@param {Integer} size The size of each chunk

@returns {Array} The two-dimensional array of chunks

@example
var arr = [0, 1, 2, 3];
_chunk(arr, 2);
// => [[0, 1], [2, 3]];

var arr = [0, 1, 2, 3];
_chunk(arr, 3);
// => [[0, 1, 2], [3]];
```

### `_clone_array(array)`

Clones a given input array, returning a deep copy.

```gml
@param {Array} array The array to clone

@returns {Array} A copy of the input array

@example
var myArray = [1, 2, 3];
var copyArray = _clone_array(myArray);
_is_equal(myArray, copyArray)
// => true
```

### `_collect(object)`

Returns an array of all objects of the provided type

```gml
@param {ObjectType} objectType The object type to collect

@returns {Array} An array of all object IDs of the provided type in the room

@example

_collect(obj_character);
// => [10001, 10002, 10005]
```

### `_concat(arrayA, arrayB)`

Appends the values of one array to another.

```gml
@param {Array} baseArray The array to append to
@param {Array} arrayToAppend The array to append

@returns {Array} The concatenated array

@example
_concat([0, 1, 2], [3, 4, 5]);
// => [0, 1, 2, 3, 4, 5]

```

### `_contains(collection, target [, fromIndex, dsType])`

Returns true if the given array contains the given value, otherwise returns false

```gml
@param {String|Array|DS_Map|DS_List} collection The collection to search
@param {*} value The value to look for
@param {Real} optionalFromIndex [0] The index to begin looking from
@param {ds_type} optionalDSType [ds_type_list] The type of the ds, if this is a ds.

@returns {Boolean} True if the collection contains the target, otherwise false

@example
_contains([1, 2, 3], 1);
// => true

_contains([1, 2, 3], 1, 1);
// => false

_contains("hello", "ello");
// => true
```

### `_destroy(object)`

Destroys the passed in instance

```gml
@param {Instance} instance The instance to destroy

@example
_destroy(obj_enemy);

// Destroy all obj_enemy with no health (hasNoHealth is a script)
_map(_filter(_collect(obj_enemy)), hasNoHealth), _destroy);
```

### `_difference_by(array, arrays..., iteratee)`

Like `_difference()`, except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which they are compared.

```gml
@param {Array} array The array to inspect
@param {Array} arrays... The arrays whose values are to be excluded
@param {Script} iteratee The script invoked on each element to generate comparison criteria

@returns {Array} The difference between the first and the remaining arrays

@example
// _floor(x)
return floor(x);

var arr0 = [0.5, 1, 2];
var arr1 = [0];
var arr2 = [0.1, 2.9];
_difference_by(arr0, arr1, arr2, _floor);
// => [1];
```

### `_difference(array, arrays...)`

Creates an array of values from the first array not found in the other arrays.

```gml
@param {Array} array The array to inspect
@param {Array} arrays... The arrays whose values are to be excluded

@returns {Array} The difference between the first and the remaining arrays

@example
var arr0 = [0, 1, 2];
var arr1 = [0];
var arr2 = [0, 2];
_difference(arr0, arr1, arr2);
// => [1];
```

### `_drop_right(array, n)`

Creates a slice of array with n elements dropped from the end.

```gml
@param {Array} array The array to inspect
@param {Integer} n The number of elements to drop

@returns {Array} The slice of array

@example
var arr = [0, 1, 2, 3];
_drop_right(arr, 2);
// => [0, 1];
```

### `_drop(array, n)`

Creates a slice of array with n elements dropped from the beginning.

```gml
@param {Array} array The array to inspect
@param {Integer} n The number of elements to drop

@returns {Array} The slice of array

@example
var arr = [0, 1, 2, 3];
_drop(arr, 2);
// => [2, 3];
```

### `_error(message [, fatal])`

When running with the debugger, displays an error window. Otherwise, logs an error using `_log`.

> *Note*: Only mark an error as `fatal` if you are okay with it ending your game

```gml
@param {String} message The message to error with
@param {Boolean} fatal [Optional] If true, will force a show_error() call with `abort` set to true

@example
_error("This is an error that will let the game continue");
_error("This is an error that will let the game continue", false);
_error("This is an error that will kill the game", true);
```

### `_fill(array, value [, start, end])`

Fills elements of array with value from start up to, but not including, end.

> *Note*: This method mutates array.

```gml
@param {Array} array The array to fill
@param {*} value The value with which to fill elements of array
@param {Integer} optionalStart The start index
@param {Integer} optionalEnd The end index

@returns {Array} The filled array

@example
var arr = [0, 1, 2, 3];
_fill(arr, 4, 1, 3);
// => [0, 4, 4, 3];

var arr = [0, 1, 2, 3];
_fill(arr, 0);
// => [0, 0, 0, 0];
```

### `_filter(collection, script)`

Returns a collection where values of the input collection are truthy when run through the provided function.

```gml
@param {Array|ds_list} collection The collection to filter
@param {Script} filterScript The script to filter with

@returns {Array|ds_list} The filtered collection

@example
_filter([0, 1, 2, 3], lessThanTwo)
// => [0, 1]

```

### `_find(array, findScript)`

Iterates over an array, returning the first element that the given script returns true for.

```gml
@param {Array} array The array to iterate over
@param {Script} findScript The script to run on the given element

@returns {*} The first element that returns truthy from the script

@example
_find([0, 1, 2, 3], __equalsThree);
// => 3
```

### `_free(id [, ds_type])`

Frees a partial function from memory

```gml
@param {Real} resource The partial ID to free
@param {DS_TYPE} optionalType The type of resource to free

@example
var __something = _partial(someScript, 1);
__something(2);
_free(__something);

```

### `_get(map, locationString)`

Gets a nested value following a dot notation

```gml
@param {DS_Map} map The map to get data from
@param {String} locationString The location of the data to get

@returns {Mixed} The data found at the given location

@example
// someMap looks like:
// { nested: {three: {deep: 1}}}
_get(someMap, 'nested.three.deep');
// => 1

```

### `_index_of(collection, value)`

Returns the index of the given item in the given array, or -1

```gml
@param {Array|DS_List} collection The collection to search
@param {*} value The value to look for

@returns {Real} The index of the value, or -1

```

### `_intersection_by(arrays..., iteratee)`

Like `_intersection()`, except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which uniqueness is computed.

```gml
@param {Array} arrays... The arrays to be intersected
@param {Script} iteratee The script invoked on each element to generate uniqueness criteria

@returns {Array} The intersection of the given arrays

@example
// _floor(x)
return floor(x);

var arr0 = [0, 1.9];
var arr1 = [0.6, 3];
_intersection_by(arr0, arr1, _floor);
// => [0];
```

### `_intersection(arrays...)`

Creates an array of unique values common to all given arrays in the order in which they originally appeared.

```gml
@param {Array} arrays... The arrays to be intersected

@returns {Array} The intersection of the given arrays

@example
var arr0 = [0, 1];
var arr1 = [0];
_intersection(arr0, arr1);
// => [0];

var arr0 = ['Sword', 'Potion'];
var arr1 = ['Shield', 'Potion', 'Sword'];
_intersection(arr0, arr1);
// => ['Sword', 'Potion'];
```

### `_is_equal(valueA, valueB [, dsType])`

Checks if two values are equal, being safe about type and checking first-level children of ds_lists and ds_maps. Returns false on type inequality rather than throwing an error.

```gml
@param {*} firstValue First value to compare
@param {*} secondValue Second value to compare
@param {ds_type} dsType [Optional] If specified, assumes this type instead of inferring the type. Only specify this if using _is_equal for a ds

@returns {Boolean} true if the values are equal, false otherwise

@example
_is_equal([1, 2, 3], [1, 2, 3]);
// => true

_is_equal("hello", 1);
// => false

var map = ds_map_create();
ds_map_add(map, 'hello', 6);
ds_map_add(map, 'world', 10);
var map2 = ds_map_create();
ds_map_add(map2, 'hello', 6);
ds_map_add(map2, 'world', 10);
_is_equal(map, map2, ds_type_map);
// => true
```

### `_join(array, joinChar)`

Returns a string of the given array combined with the given joiner

```gml
@param {Array} array The array to join
@param {String} joinChar The character to join by

@returns {String} The joined array

@example
var arr = ['hello', 'world'];
_join(arr, ' ');
// => 'hello world'

var arr = ['Peter', 'Paul', 'Mary'];
_join(arr, ', ');
// => 'Peter, Paul, Mary';
```

### `_keys(map)`

Returns an array contains all keys in a ds_map. Order is not guaranteed due to how ds_maps are stored.

```gml
@param {DS_Map} map The map to get the keys from

@returns {Array} An array of all keys in the map

@example
var map = ds_map_create();
ds_map_add(map, 'hello', 'world');
ds_map_add(map, 'health', 100);

_keys(map);
// => ['hello', 'health']

```

### `_length(collectionOrString)`

Returns the length of the given array or ds_list

```gml
@param {Array|DS_List} collection The collection to determine the length of

@returns {Real} The length of the collection

@example
_length([1, 2, 3, 4]);
// => 4

_length(some_list_id_of_size_5);
// => 5
```

### `_list_of(values...)`

Returns a DS_List containing the provided values. This DS_List should be destroyed as you would any other DS.

```gml
@param {*} values... As many starting values for the list as desired

@returns {DS_List} A new DS_List containing the provided values

@example

var list = _list_of(1, 2, 3, 4);
_log(list[| 2]) // logs 3
```

### `_log(values...)`

Convenience method for show_debug_message(). Automatically convetrs arguments to strings.

```gml
@param {Mixed} Messages... The message or value to log

```

### `_map_of(values...)`

Returns a DS_Map containing the provided values. Arguments are split into key/value pairs in the order they are provided.

> *Note*: This script must take an even number of arguments. Keys can only be integers or strings.

```gml
@param {*} values... As many starting values for the map as desired

@returns {DS_Map} A new DS_Map containing the provided key/value pairs

@example

var map = _map_of(
    "health", 100,
    "mana", 20,
    "level", 1
);

map[? "health"] // = 100
map[? "mana"] // = 20
map[? "level"] // = 1

```

### `_map(collection, script [, ds_type])`

Iterates over a given collection, running the provided function for each value in the collection. Returns an array of all function results at each index.

```gml
@param {Array|DS_Map|DS_List} collection The collection to map
@param {Script} script The script to map over the collection
@param {ds_type|String} optionalType ["array"] The type of collection. Only provide when using a DS

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

### `_nth(collection, index)`

Returns the nth index of the given array or ds_list. If n is negative, the nth element from the end is returned.

```gml
@param collection
@param n

```

### `_or(valueA, valueB)`

Returns the value of the provided arguments after a boolean OR

```gml
@param {*} valueA Some first input
@param {*} valueB A value to || the first input with

@returns {Boolean} The value of the provided arguments after an ||

@example
_or(true, true);
// => true

_or(false, true);
// => true

_or(false, false);
// => false

```

### `_partial(script, partialArgs...)`

Creates a partial function identifier for use in place of raw scripts in gdash functions, or with the use of `_run`.

> *Note*: Partials are to be treated as a data structure, and must be cleaned up with _free() when they are no longer of use.

```gml
@param {Script} script The script to create a partial of
@param {*} partialArguments... Arguments to bind to the partial

@returns {Real} The partial ID (a ds_map, internally)

@example
// Script: lessThan
return argument1 < argument0

// Meanwhile...
var lessThanTwo = _partial(lessThan, 2);
_run(lessThanTwo, 1);
// => true

_run(lessThanTwo, 10);
// => false

```

### `_push(array, value)`

Adds a value to the end of an array

```gml
@param {Array} array The array to add the value to
@param {*} value The value to add

@returns {Array} The array with the value added

@example
_push([1, 2], 3);
// => [1, 2, 3]
```

### `_reduce(collection, reducer)`

Reduces a collection by iterating over it with a function. Provided script should take 2 arguments: total, value.

```gml
@param {Array|ds_list} collection The collection to reduce
@param {Script} recuderScript The script to reduce with
@param {*} value [Optional] The default value to begin reducing with. If not provided, the default is `undefined`

@returns {*} The reduced value from the given script

@example
var arr = [1, 2, 3, 4, 5];
_reduce(arr, sum);
// => 15

var arr = ['hello', 'world'];
_reduce(arr, concat);
// => 'helloworld';
```

### `_reverse(array)`

Reverses the order of elements in array.

> *Note*: This method mutates the input array. To create a new array instead, use `_backward`

```gml
@param {Array} array The array to modify

@returns {Array} The reversed array

@example
var arr = [0, 1, 2];
_reverse(arr);
// => [2, 1, 0];
```

### `_run(scriptOrPartial, arguments...)`

Executes a script or partial with the provided arguments

```gml
@param {Script|Real} scriptOrPartial The script to run or the ID of the partial to run
@param {*} arguments... Arguments to pass the script

@returns {*} The return value of the script

@example
_run(_add, 1, 2);
// => 3

var addTwo = _partial(_add, 2);
_run(addTwo, 1);
// => 3
```

### `_set(map, locationString, value)`

Sets a nested value following a dot notation. Creates along the way if its not set.

```gml
@param {DS_Map} map The map to set data in
@param {String} locationString The location of the data to set
@param {Mixed} value The data to set
@param {ds_type_map|ds_type_list} optionalType Optional argument, pass in ds_type_map or ds_type_list to denote this value as a map or list

@example
// someMap looks like:
//  { nested: {three: {deep: 1}}}
_set(someMap, 'nested.three.deep', 2);
// => someMap now looks like:
// => {nested: {three: {deep: 2}}}

// some map looks like:
// { someKey: "someValue" }
_set(someMap, "newKey", ds_list_create(), ds_type_list);
// => someMap now looks like:
// => { someKey: "someValue", newKey: [] }

```

### `_slice(array, start [, end])`

Creates a slice of array from start up to, but not including, end.

```gml
@param {Array} array The array to slice
@param {Integer} start Index to start the slice
@param {Integer} end(optional) Index up to which to make the slice, defaults to end of array.

@returns {Array} The sliced array

@example
var myArray = [1, 2, 3, 4];
var slicedArray = _slice(myArray, 1, 3);
_is_equal([2, 3], slicedArray)
// => true
```

### `_split(string, splitChar)`

Returns an array of strings represnting the given string separated by a given substring

```gml
@param {String} string The string to split
@param {String} splitChar The character to split by

@returns {Array} The split string

@example
_split('Hello, world', ',');
// => ['Hello', ' world']

_split('Dogs and cats and mice', ' and ');
// => ['Dogs', 'cats', 'mice']
```

### `_spread(script, argsArray)`

Runs a script with the provided array as arguments

```gml
@param {Script} script The script to run
@param {Array} arrayOfArguments An array to provide as individual arguments

@return {*} The return value of the script

@example
_spread(add_to_list, [listId, 1, 2, 3, 4]);
// => List now contains 1, 2, 3, 4
```

### `_times(script)`

Returns an array of the result of a function run the given number of times

```gml
@param {Real} executeCount The number of times to execute the function
@param {Script} script The script to execute

@returns {Array} An array of the script results

@example
_times(3, returnTheValue5);
// => [5, 5, 5];

```

### `_to_array(list)`

Converts the given ds_list to an array

> *Note*: If the given list is of size 0, this will return undefined.

```gml
@param list

```

### `_to_list(array)`

Converts the given array to a new ds_list

```gml
@param array

@example
var input = ["hello", "world", 10];
var list = _to_list(input);
list[| 0]; // "hello"
list[| 1]; // "world"
list[| 2]; // 10
```

### `_type_of(value)`

Returns the variable type of the given argument as a string.

> *Note*: Works exactly as the native typeof(), though refers to `number` as `real` to be more consistent with GM:S terminology

```gml
@param {*} value A variable to check the type of

@returns {String} The type of the variable as a human readable string

@example

_type_of(1);
// => "real"

_type_of("hello");
// => "string"

var arr;
arr[0] = 1; arr[1] = 2;
_type_of(arr);
// => "array"

_type_of(undefined);
// => "undefined";

_type_of(sprite_get_texture(spr_player, 1));
// => "ptr";
```

### `_union_by(arrays..., iteratee)`

Like `_union()`, except that it accepts iteratee which is invoked for each element of each array to generate the criterion by which uniqueness is computed.

```gml
@param {Array} arrays... The arrays to be unioned
@param {Script} iteratee The script invoked on each element to generate uniqueness criteria

@returns {Array} The union of the given arrays

@example
// _floor(x)
return floor(x);

var arr0 = [0.5, 1.2];
var arr1 = [0, 1.9];
_union_by(arr0, arr1, _floor);
// => [0.5, 1.2];
```

### `_union(arrays...)`

Creates an array of unique values, in the order in which they originally appeared, from all given arrays.

```gml
@param {Array} arrays... The arrays to be unioned

@returns {Array} The union of the given arrays

@example
var arr0 = _array_of(0, 1);
var arr1 = _array_of(0);
_union(arr0, arr1);
// => [0, 1];

var arr0 = _array_of('Sword', 'Potion');
var arr1 = _array_of('Shield', 'Sword');
_union(arr0, arr1);
// => ['Sword', 'Potion', 'Shield'];
```

### `_uniq(array)`

Returns an array with all duplicate values removed

```gml
@param {Array} array An array with duplicate values

@returns {Array} An array with the duplicate values removed

@example
_uniq([1, 1, 2, 3]);
// => [1, 2, 3]
```

### `_unzip(array)`

From a zipped two-dimensional array, creates a collection of grouped elements by regrouping the elements to their pre-zipped configuration 

```gml
@param {Array} array The zipped two-dimensional array

@returns {Array} The two-dimensional array of regrouped elements

@example
var arr0 = [0, 1, 2];
var arr1 = [3, 4, 5];
var arr2 =_zip(arr0, arr1);
_unzip(arr2);
// => [[0, 1, 2], [3, 4, 5]];

```

### `_without(array, values...)`

Creates an array excluding all given values from amongst the elements of the given array

```gml
@param {Array} array The array to inspect
@param {*} values... The values to exclude

@returns {Array} The array of filtered elements

@example
var arr = [0, 1, 0, 2];
_without(arr, 0, 1);
// => [2];
```

### `_zip(arrays...)`

Creates a two-dimensional array of grouped elements, the first of which contains the first elements of the given arrays, the second of which contains the second elements of the given arrays, and so on.

```gml
@param {Array} arrays... The remaining arrays

@returns {Array} The array of elements grouped in arrays

@example
var arr0 = [0, 1];
var arr1 = ['Sword', 'Shield'];
var arr2 = [true, false];
_zip(arr0, arr1, arr2);
// => [[0, 'Sword', true], [1, 'Shield', false]];

var arr0 = [0, 1, 2];
var arr1 = [3, 4, 5];
_zip(arr0, arr1);
// => [[0, 3], [1, 4], [2, 5]];
```
