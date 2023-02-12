///@func string_foreach(str, func, [pos], [length])
///@arg {String} str The string to iterate over
///@arg {Function} func The function to execute for each of the characters in the range, with arguments character and position
///@arg {Real} pos OPTIONAL The starting position (default 1). Negative values count from the end of the string. 0 treated as 1.
///@arg {Real} length OPTIONAL The number of characters to iterate over and the direction in which to iterate (left-to-right (positive value) or right-to-left (negative value)).
///@desc This function executes a callback function on all characters of the given string.
///
///The function optionally takes in a starting position and a length that define the range of characters over which to iterate, and the direction of iteration (left-to-right or right-to-left).
///
///The callback function will receive two arguments for each character in the string: the character itself, and its position in the string.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_foreach.htm

function string_foreach(str, func, pos=1, length=infinity) {
	var offset = (pos == 0) ? 1 : pos;
	var n = string_length(str),
		iStep = sign(length),
		iFrom = (offset < 0) ? (n+1+offset) : offset,
		iTo = clamp(iFrom+length-iStep, 1, n),
		iStopAt = iTo+iStep;
	for (var i = iFrom; i != iStopAt; i += iStep) {
		func(string_char_at(str, i), i);
	}
}