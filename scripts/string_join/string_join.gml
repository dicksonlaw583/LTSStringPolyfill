///@func string_join(delimiter, ...)
///@arg {String} delimiter The string to insert between the values
///@arg {Any} ... Values to join
///@return {String}
///@desc This function joins together the string representations of all arguments that are passed to it, inserting the given "delimiter" between each argument. The function returns the joined string.
///
///Arguments that are not strings will have the string() function run on them implicitly.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_join.htm

function string_join(delimiter) {
	var result = "";
	for (var i = 1; i < argument_count; ++i) {
		if (i > 1) result += delimiter;
		result += is_string(argument[i]) ? argument[i] : string(argument[i]);
	}
	return result;
}