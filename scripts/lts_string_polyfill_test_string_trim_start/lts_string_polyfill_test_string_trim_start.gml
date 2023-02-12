///@func lts_string_polyfill_test_string_trim_start()
///@desc Test string_trim_start polyfill.

function lts_string_polyfill_test_string_trim_start() {
	#region Basic Test
	assert_equal(string_trim_start(""), "", "string_trim_start 0a");
	assert_equal(string_trim_start(" "), "", "string_trim_start 0b");
	assert_equal(string_trim_start(" \t\r\n\f\v"), "", "string_trim_start 0c");

	assert_equal(string_trim_start("abc"), "abc", "string_trim_start 1");

	assert_equal(string_trim_start("\t abc"), "abc", "string_trim_start 2a");
	assert_equal(string_trim_start("abc \t"), "abc \t", "string_trim_start 2b");
	assert_equal(string_trim_start("\n  abc \t"), "abc \t", "string_trim_start 2c");
	#endregion
}