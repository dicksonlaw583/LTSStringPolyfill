///@func string_concat_ext(array, [offset], [length])
///@arg {Array} array The array containing the values to join together
///@arg {Real} [offset] OPTIONAL The offset, or starting index, in the array to start joining elements. Setting a negative value will count from the end of the array.
///@arg {Real} [length] OPTIONAL The number of array elements to concatenate, starting at the offset. A negative value will traverse the array backwards.
///@return {String}
///@desc This function joins together the string representations of all values in the given array (or part of the array), inserting the given "delimiter" between each value. The function returns the joined string.
///
///Values that are not strings will have the string() function run on them implicitly.
///
///https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FStrings%2Fstring_concat_ext.htm

function string_concat_ext(array, offset=0, length=infinity) {
	var result = "";
	var n = array_length(array),
		iStep = sign(length),
		iFrom = (offset < 0) ? n+offset : offset,
		iTo = clamp(iFrom+length-iStep, 0, n-1),
		iStopAt = iTo+iStep;
	for (var i = iFrom; i != iStopAt; i += iStep) {
		result += is_string(array[i]) ? array[i] : string(array[i]);
	}
	return result;
}