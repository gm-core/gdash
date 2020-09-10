/// @func _join(array, joinChar)
/// @desc Returns a string of the given array combined with the given joiner
/// @param {Array} array The array to join
/// @param {String} joinChar The character to join by
/// @returns {String} The joined array
function _join(arr, joinChar) {
	/*
	@example
	var arr = ['hello', 'world'];
	_join(arr, ' ');
	// => 'hello world'

	var arr = ['Peter', 'Paul', 'Mary'];
	_join(arr, ', ');
	// => 'Peter, Paul, Mary';
	*/

	var outString = "";
	var inArray = arr;
	var joiner = joinChar;

	var arrLength = array_length(inArray);
	var maxIndex = arrLength - 1;
	var stringJoiner = string(joiner);

	for (var i = 0; i < arrLength; i++) {
	    outString += string(inArray[@ i]);
    
	    if (i != maxIndex) {
	        outString += stringJoiner;
	    }
	}

	return outString;
}
