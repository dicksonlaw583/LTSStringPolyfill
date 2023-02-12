///@func lts_string_polyfill_test_string_ends_with()
///@desc Test string_ends_with polyfill.

function lts_string_polyfill_test_string_ends_with() {
	#region Basic Test
	assert(string_ends_with("", ""), "string_ends_with true 0");
	assert(string_ends_with("abc", "abc"), "string_ends_with true 1");
	assert(string_ends_with("abcdef", "ef"), "string_ends_with true 2");
	assert_fail(string_ends_with("abc", "ABC"), "string_ends_with false 1");
	assert_fail(string_ends_with("abcd", "bd"), "string_ends_with false 2");
	assert_fail(string_ends_with("bcd", "abc"), "string_ends_with false 3");
	#endregion
}