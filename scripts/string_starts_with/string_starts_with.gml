///@func string_starts_with(str, substr)
///@arg {String} str The string to check for the occurrence of the given substring at the start
///@arg {String} substr The substring that the string should start with
///@return {Bool}
///@desc This function checks if a string starts with the given substring. It returns true if it does, or false if it doesn't.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_starts_with.htm

function string_starts_with(str, substr) {
	return string_copy(str, 1, string_length(substr)) == substr;
}