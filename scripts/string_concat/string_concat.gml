///@func string_concat(...)
///@arg {Any} ... Values to join
///@return {String}
///@desc This function concatenates (joins together) the string representations of all arguments that are passed to it, and returns the result as a new string.
///
///Arguments that are not strings will have the string() function run on them implicitly.
///
///If you want to join strings with certain characters between them, use string_join().
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_concat.htm

function string_concat() {
	var result = "";
	for (var i = 0; i < argument_count; ++i) {
		result += is_string(argument[i]) ? argument[i] : string(argument[i]);
	}
	return result;
}