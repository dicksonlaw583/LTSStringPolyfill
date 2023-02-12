///@func lts_string_polyfill_test_string_starts_with()
///@desc Test string_starts_with polyfill.

function lts_string_polyfill_test_string_starts_with() {
	#region Basic Test
	assert(string_starts_with("", ""), "string_starts_with true 0");
	assert(string_starts_with("abc", "abc"), "string_starts_with true 1");
	assert(string_starts_with("abcdef", "ab"), "string_starts_with true 2");
	assert_fail(string_starts_with("abc", "ABC"), "string_starts_with false 1");
	assert_fail(string_starts_with("abcd", "ac"), "string_starts_with false 2");
	assert_fail(string_starts_with("abcd", "bcd"), "string_starts_with false 3");
	#endregion
}