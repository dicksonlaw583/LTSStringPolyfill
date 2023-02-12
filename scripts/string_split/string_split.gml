///@func string_split(str, delimiter, [removeEmpty], [maxSplits])
///@arg {String} str The string to split using the given delimiter
///@arg {String} delimiter The delimiter to use
///@arg {Bool} removeEmpty OPTIONAL Whether empty array elements should be removed from the array or not (default is false).
///@arg {Real} maxSplits OPTIONAL The maximum number of splits to make. Any delimiters that come after maxSplits become part of the last string.
///@return {Array<String>}
///@desc This function splits a string into separate strings using the given delimiter. The separated strings are returned in a new array.
///
///The delimiter string is the boundary (either a single character or a string of characters) which causes the string to split.
///
///For example, if the string is "This is the string", it can be split by using a single space character " " as the delimiter. The resulting array will look like this: ["This", "is", "the", "string"], with the original string being "split" wherever the delimiter was present.
///
///The delimiter itself is never included in the resulting strings.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_split.htm

function string_split(str, delimiter, removeEmpty=false, maxSplits=infinity) {
	var batchStr = str;
	var remainingSplits = maxSplits;
	var delimiterLength = string_length(delimiter);
	var result = [];
	var splitPos;
	do {
		splitPos = string_pos(delimiter, batchStr);
		if (splitPos != 0) {
			if (!removeEmpty || splitPos > 1) {
				array_push(result, string_copy(batchStr, 1, splitPos-1));
			}
			batchStr = string_delete(batchStr, 1, splitPos+delimiterLength-1);
		}
	} until (splitPos == 0 || --remainingSplits <= 0)
	if (!removeEmpty || batchStr != "") {
		array_push(result, batchStr);
	}
	return result;
}