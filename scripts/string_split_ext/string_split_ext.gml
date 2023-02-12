///@func string_split_ext(str, delimiters, [removeEmpty], [maxSplits])
///@arg {String} str The string to split using the given delimiters
///@arg {Array<String>} delimiters An array with the delimiters on which to split the string
///@arg {Bool} removeEmpty OPTIONAL Whether empty array elements should be removed from the array or not (default is false).
///@arg {Real} maxSplits OPTIONAL The maximum number of splits to make. Any delimiters that come after maxSplits become part of the last string.
///@return {Array<String>}
///@desc This function splits a string into into separate strings using any of the delimiters in an array. The resulting strings are returned in a new array.
///
///The delimiter array contains all possible values at which the string is split. For example, you can have a string that you want to split "Name,Age;Height|Description". In the end you want the individual words but there are multiple delimiter characters, which you can specify in an array: [",", ";", "|"]. The result of string_split_ext on the given string with this array will then be ["Name", "Age", "Height", "Description"].
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_split_ext.htm

function string_split_ext(str, delimiters, removeEmpty=false, maxSplits=infinity) {
	var batchStr = str;
	var remainingSplits = maxSplits;
	var nDelimiters = array_length(delimiters);
	var delimiterLengths = array_create(nDelimiters);
	for (var i = nDelimiters-1; i >= 0; --i) {
		delimiterLengths[i] = string_length(delimiters[i]);
	}
	
	var result = [];
	var splitPos, delimiter;
	do {
		splitPos = 0;
		delimiter = "";
		for (var i = 0; i < nDelimiters; ++i) {
			var currentDelimiter = delimiters[i];
			var currentSplitPos = string_pos(currentDelimiter, batchStr);
			if (currentSplitPos != 0 && (splitPos == 0 || currentSplitPos < splitPos)) {
				splitPos = currentSplitPos;
				delimiter = currentDelimiter;
			}
		}
		if (splitPos != 0) {
			if (!removeEmpty || splitPos > 1) {
				array_push(result, string_copy(batchStr, 1, splitPos-1));
			}
			batchStr = string_delete(batchStr, 1, splitPos+string_length(delimiter)-1);
		}
	} until (splitPos == 0 || --remainingSplits <= 0)
	if (!removeEmpty || batchStr != "") {
		array_push(result, batchStr);
	}
	return result;
}