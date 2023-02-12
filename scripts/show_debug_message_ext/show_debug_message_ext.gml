///@func show_debug_message_ext(valueOrFormat, [values])
///@arg {Any} valueOrFormat The value to be turned into a string.
///@arg {Array} values OPTIONAL An array of values to be inserted at the placeholder positions.
///@desc This function shows a custom debug message in The Output Window.
///
///The syntax of this function is identical to that of the string_ext function; aside from a single argument it can also take a Format String with placeholders and and array with additional arguments to replace the placeholders with.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fshow_debug_message_ext.htm

function show_debug_message_ext(valueOrFormat, values=[]) {
	show_debug_message(string_ext(valueOrFormat, values));
}