var inputArray = argument[0];
var appendArray = argument[1];
var i = _length(inputArray),
var n = 0;

repeat (_length(appendArray)) {
    inputArray[i] = appendArray[n];
    n++;
    i++;
}

return inputArray;

