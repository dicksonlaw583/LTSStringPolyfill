///@func string_trim(str)
///@arg {String} str The string to trim
///@return {String}
///@desc This function returns a new string with all leading and trailing white-space characters removed.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_trim.htm

function string_trim(str) {
	var strlen = string_length(str);
	var iFrom, iTo;
	for (iFrom = 1; iFrom < strlen && LTS_CHAR_IS_WHITESPACE(string_char_at(str, iFrom)); ++iFrom) {}
	for (iTo = strlen; iTo > iFrom && LTS_CHAR_IS_WHITESPACE(string_char_at(str, iTo)); --iTo) {}
	return (iFrom >= iTo) ? "" : string_copy(str, iFrom, iTo-iFrom+1);
}