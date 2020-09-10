/*
 * Simplified logging. Prints all arguments to the output console.
 * If you are not using a version of GameMaker with an output console, you
 * may want to edit this script to output to a file or something else.
 */
var output = string(argument[0]);
for (var i = 1; i < argument_count; i++) {
    output += " " + string(argument[i])
}
show_debug_message(output);
