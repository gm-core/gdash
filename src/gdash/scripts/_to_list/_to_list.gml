/// @func _to_list(array)
/// @desc Converts the given array to a new ds_list
/// @param array
/// Note: This creates a ds_list resource which should be destroyed with ds_list_destroy when it is no longer needed.
function _to_list(arr) {
	/*
	@example
	var input = ["hello", "world", 10];
	var list = _to_list(input);
	list[| 0]; // "hello"
	list[| 1]; // "world"
	list[| 2]; // 10
	*/

	var arrSize = array_length(arr);
	var list = ds_list_create();

	for (var i = 0; i < arrSize; i++) {
	    ds_list_add(list, arr[@ i]);
	}

	return list;
}
