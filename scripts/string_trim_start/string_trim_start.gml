///@func string_trim_start(str)
///@arg {String} str The string to trim
///@return {String}
///@desc This function returns a new string with all leading white-space characters removed.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_trim_start.htm

function string_trim_start(str) {
	var strlen = string_length(str);
	var i;
	for (i = 1; i <= strlen && LTS_CHAR_IS_WHITESPACE(string_char_at(str, i)); ++i) {}
	return (i >= strlen) ? "" : string_copy(str, i, strlen-i+1);
}