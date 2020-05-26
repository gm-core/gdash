function sum() {
	var total = argument[0];
	var addMe = argument[1];

	if (_type_of(total) == "undefined") {
	    return addMe;
	} else {
	    return total + addMe;
	}



}
