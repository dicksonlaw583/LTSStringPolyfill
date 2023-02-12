///@func lts_string_polyfill_test_string_trim()
///@desc Test string_trim polyfill.

function lts_string_polyfill_test_string_trim() {
	#region Basic Test
	assert_equal(string_trim(""), "", "string_trim 0a");
	assert_equal(string_trim(" "), "", "string_trim 0b");
	assert_equal(string_trim(" \t\r\n\f\v"), "", "string_trim 0c");

	assert_equal(string_trim("abc"), "abc", "string_trim 1");

	assert_equal(string_trim("\t abc"), "abc", "string_trim 2a");
	assert_equal(string_trim("abc \t"), "abc", "string_trim 2b");
	assert_equal(string_trim("\n  abc \t"), "abc", "string_trim 2c");
	#endregion
}