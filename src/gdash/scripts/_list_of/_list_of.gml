/// @func _list_of(values...)
/// @desc Returns a DS_List containing the provided values. This DS_List should be destroyed as you would any other DS.
/// @param {*} values... As many starting values for the list as desired
/// @returns {DS_List} A new DS_List containing the provided values
function _list_of() {
	/*
	@example

	var list = _list_of(1, 2, 3, 4);
	_log(list[| 2]) // logs 3
	*/

	var list = ds_list_create();

	for (var i = 0; i < argument_count; i++) {
	    ds_list_add(list, argument[i]);
	}

	return list;


}
