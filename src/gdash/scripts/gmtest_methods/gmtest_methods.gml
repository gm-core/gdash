/// @desc Defines an individual test
/// @param {string} description  The description of the functionality being tested
/// @param {method} testMethod   A method containing the test
function test_it(testName, testMethod) {
	var testCount = array_length(global.__gmtest_testsCollection);
	global.__gmtest_testsCollection[testCount] = {
		name: testName,
		test: testMethod,
	}
}

/// @desc Defines a setup function for a suite of tests
/// @param {method} setupMethod  A method containing the setup for a test suite
function test_before(setupMethod) {
	global.__gmtest_before = setupMethod;
}

/// @desc Defines a cleanup function for a suite of tests
/// @param {method} cleanupMethod  A method containing the cleanup for a test suite
function test_after(cleanupMethod) {
	global.__gmtest_after = cleanupMethod;
}

/// @desc Defines a setup function for each test in a suite of tests
/// @param {method} setupMethod  A method containing the setup for a test suite
function test_before_each(setupMethod) {
	global.__gmtest_beforeEach = setupMethod;
}

/// @desc Defines a cleanup function for each test in a suite of tests
/// @param {method} cleanupMethod  A method containing the cleanup for a test suite
function test_after_each(cleanupMethod) {
	global.__gmtest_afterEach = cleanupMethod;
}

/// @desc Wraps a suite of tests
/// @param {string} testName         The name of the test suite
/// @param {method} testSuiteMethod  A method containing the individual tests
function test_describe(testName, testSuiteMethod){
	if (!variable_global_exists("__gmtest_suites")) {
		global.__gmtest_suites = [];
	}
	
	global.__gmtest_testsCollection = [];
	global.__gmtest_before = function() {};
	global.__gmtest_after = function() {};
	global.__gmtest_beforeEach = function() {};
	global.__gmtest_afterEach = function() {};
	
	testSuiteMethod();
	
	global.__gmtest_suites[array_length(global.__gmtest_suites)] = {
		name: testName,
		tests: global.__gmtest_testsCollection,
		before: global.__gmtest_before,
		after: global.__gmtest_after,
		beforeEach: global.__gmtest_beforeEach,
		afterEach: global.__gmtest_afterEach,
	};
}

/// @desc Runs all registered tests
/// @param autoEnd {boolean}  If GM Test should close the game upon completion of the tests. Defaults to false.
function test_run_all() {
	var autoEnd = argument_count > 0 ? argument[0] : false;
	var testCount = array_length(global.__gmtest_suites);
	var totalTests = 0;
	var passedTests = 0;
	var brokenTests = [];
	for (var i = 0; i < testCount; i++) {
		// Prepare for this suite
		global.__gmtest_before = -1;
		global.__gmtest_after = -1;
		
		// Print suite info
		var testSuite = global.__gmtest_suites[i];
		show_debug_message(testSuite.name);
		
		var suiteTestCount = array_length(testSuite.tests);
		testSuite.before();
		
		for (var testIdx = 0; testIdx < suiteTestCount; testIdx++) {
			
			totalTests++;
			var testPassed = true;
			var testExceptionMessage = "";

			// Run the test
			testSuite.beforeEach();
			
			try {
				testSuite.tests[testIdx].test();
			} catch (error) {
				testPassed = false;
				testExceptionMessage = typeof(error) == "string" ? error : error.message;
			} finally {
				testSuite.afterEach();
			}
			
			if (testPassed) {
				show_debug_message("|- ✓ It " + testSuite.tests[testIdx].name);
				passedTests++;
			} else {
				show_debug_message("|- × It " + testSuite.tests[testIdx].name);
				show_debug_message("|-- ERROR: " + testExceptionMessage);
				
				brokenTests[array_length(brokenTests)] = {
					suite: testSuite.name,
					test: testSuite.tests[testIdx].name,
					errorMessage: testExceptionMessage,
				};
			}
		}
		testSuite.after();
		show_debug_message("");

	}
	
	show_debug_message("[" + string(passedTests) + "/" + string(totalTests) + "] Test exeuction end");
	show_debug_message("");
	show_debug_message("-----------");
	
	if (array_length(brokenTests) > 0) {
		show_debug_message("");
		show_debug_message("Failed tests:");
		show_debug_message("");
	
		for (var i = 0; i < array_length(brokenTests); i++) {
			show_debug_message("In " + brokenTests[i].suite);
			show_debug_message("|- × It " + brokenTests[i].test);
			show_debug_message("|-- ERROR: " + brokenTests[i].errorMessage);
			show_debug_message("-----------");
		}
	} else {
		show_debug_message("All tests passing!");
	}
	
	if (autoEnd) {
		game_end();
	}
}
