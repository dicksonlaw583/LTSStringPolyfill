///@func string_trim_end(str)
///@arg {String} str The string to trim
///@return {String}
///@desc This function returns a new string with all trailing white-space characters removed.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_trim_end.htm

function string_trim_end(str) {
	var strlen = string_length(str);
	var i;
	for (i = strlen; i >= 1 && LTS_CHAR_IS_WHITESPACE(string_char_at(str, i)); --i) {}
	return (i < 1) ? "" : string_copy(str, 1, i);
}