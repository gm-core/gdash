var count = 1000000;
var testName = "Performance test";

#region setup

var arr = [1, 2, 3, 4, 5];

#endregion

var startTime = get_timer();
for (var i = 0; i < count; i++) {
    
#region test

    //_uniq(arr);

#endregion

}

var endTime = get_timer();
_log(">>> " + testName + " completed in " + string((endTime - startTime) * 0.000001) + " seconds");
alarm[0] = 1;