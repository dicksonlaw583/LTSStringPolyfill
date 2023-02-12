///@func string_ext(valueOrFormat, [values])
///@arg {Any} valueOrFormat The value to be turned into a string.
///@arg {Array} values OPTIONAL An array of values to be inserted at the placeholder positions.
///@return {String}
///@desc This function creates a new string, allowing you to insert placeholders in the main "format string", and to specify an array containing the values to be inserted into those placeholders.
///
///When only one argument is provided to the function, this argument is considered to be a value, which will be converted to a string from its original data type. When the second argument is given, the first argument is considered a Format String and the second argument an array that contains values to be inserted into the format string.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_ext.htm

function string_ext(valueOrFormat, values=[]) {
	if (is_string(valueOrFormat)) {
		var result = valueOrFormat;
		for (var i = array_length(values)-1; i >= 0; --i) {
			result = string_replace_all(result, "{" + string(i) + "}", values[i]);
		}
		return result;
	}
	return string(valueOrFormat);
}