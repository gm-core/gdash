/*
Executes a script or partial with the provided arguments

@param {Script|Real} The script to run or the ID of the partial to run
@param 1-14 {*} Arguments to pass the script
@returns {*} The return value of the script

@example
_run(_add, 1, 2);
// => 3

var addTwo = _partial(_add, 2);
_run(addTwo, 1);
// => 3
*/

var func = argument[0];
var args = undefined;
for (var i = 1; i < argument_count; i++) {
    args[i - 1] = argument[i];
}

// Check if func is a partial (map with 'partial' set to 'partial');
if (ds_exists(func, ds_type_map) && _isEqual(ds_map_find_value(func, 'partial'), 'partial')) {
    var partialId = func;
    func = ds_map_find_value(partialId, 'function');
    args = _concat(ds_map_find_value(partialId, 'args'), args);
}

return _spread(func, args);



