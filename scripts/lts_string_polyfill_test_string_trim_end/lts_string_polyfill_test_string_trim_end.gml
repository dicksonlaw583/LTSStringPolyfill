///@func lts_string_polyfill_test_string_trim_end()
///@desc Test string_trim_end polyfill.

function lts_string_polyfill_test_string_trim_end() {
	#region Basic Test
	assert_equal(string_trim_end(""), "", "string_trim_end 0a");
	assert_equal(string_trim_end(" "), "", "string_trim_end 0b");
	assert_equal(string_trim_end(" \t\r\n\f\v"), "", "string_trim_end 0c");

	assert_equal(string_trim_end("abc"), "abc", "string_trim_end 1");

	assert_equal(string_trim_end("\t abc"), "\t abc", "string_trim_end 2a");
	assert_equal(string_trim_end("abc \t"), "abc", "string_trim_end 2b");
	assert_equal(string_trim_end("\n  abc \t"), "\n  abc", "string_trim_end 2c");
	#endregion
}