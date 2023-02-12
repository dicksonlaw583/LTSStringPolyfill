///@func string_ends_with(str, substr)
///@arg {String} str The string to check for the occurrence of the given substring at the end
///@arg {String} substr The substring that the string should end with
///@return {Bool}
///@desc This function checks if a string ends with a given substring. It returns true if it does, or false if it doesn't.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_ends_with.htm

function string_ends_with(str, substr) {
	var substrlen = string_length(substr);
	return string_copy(str, max(1, string_length(str)-substrlen+1), substrlen) == substr;
}