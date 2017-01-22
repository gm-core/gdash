var total = argument[0];
var addMe = argument[1];

if (_typeOf(total) == "undefined") {
    return addMe;
} else {
    return total + addMe;
}
