///@func lts_string_polyfill_test_string_split()
///@desc Test string_split polyfill.

function lts_string_polyfill_test_string_split() {
	#region Basic Test
	assert_equal(string_split("", " "), [""], "string_split 0");
	assert_equal(string_split("foobar", " "), ["foobar"], "string_split 1");
	assert_equal(string_split("foo bar", " "), ["foo", "bar"], "string_split 2a");
	assert_equal(string_split("foo::bar", "::"), ["foo", "bar"], "string_split 2b");
	assert_equal(string_split("foo::bar", ":"), ["foo", "", "bar"], "string_split 2c");
	assert_equal(string_split("foo bar baz qux", " "), ["foo", "bar", "baz", "qux"], "string_split 3a");
	assert_equal(string_split("foo::bar::baz::qux", "::"), ["foo", "bar", "baz", "qux"], "string_split 3b");
	assert_equal(string_split("foo::bar::baz", ":"), ["foo", "", "bar", "", "baz"], "string_split 3c");
	#endregion

	#region Optional Parameters Test
	assert_equal(string_split("::", ":", true), [], "string_split removeEmpty 1");
	assert_equal(string_split("foo::bar:baz", ":", true), ["foo", "bar", "baz"], "string_split removeEmpty 2");
	assert_equal(string_split("1|2|3|4|5", "|", false, 1), ["1", "2|3|4|5"], "string_split removeEmpty 3");
	assert_equal(string_split("1|2|3|4|5", "|", false, 3), ["1", "2", "3", "4|5"], "string_split removeEmpty 4");
	assert_equal(string_split("1|2|3|4|5", "|", false, 5), ["1", "2", "3", "4", "5"], "string_split removeEmpty 5");
	assert_equal(string_split("1||2|3|4|5", "|", true, 2), ["1", "2|3|4|5"], "string_split removeEmpty 6");
	assert_equal(string_split("1||2|3|4|5", "|", true, 3), ["1", "2", "3|4|5"], "string_split removeEmpty 7");
	assert_equal(string_split("1||2|3|4|5", "|", true, 5), ["1", "2", "3", "4", "5"], "string_split removeEmpty 8");
	#endregion
}