///@func lts_string_polyfill_test_string_split_ext()
///@desc Test string_split_ext polyfill.

function lts_string_polyfill_test_string_split_ext() {
	#region Basic Test
	assert_equal(string_split_ext("", [" "]), [""], "string_split_ext 0");
	assert_equal(string_split_ext("foobar", [" "]), ["foobar"], "string_split_ext 1");
	assert_equal(string_split_ext("foo bar", [" "]), ["foo", "bar"], "string_split_ext 2a");
	assert_equal(string_split_ext("foo::bar", ["::"]), ["foo", "bar"], "string_split_ext 2b");
	assert_equal(string_split_ext("foo::bar", [":"]), ["foo", "", "bar"], "string_split_ext 2c");
	assert_equal(string_split_ext("foo bar;baz qux", [" ", ";"]), ["foo", "bar", "baz", "qux"], "string_split_ext 3a");
	assert_equal(string_split_ext("foo::bar baz::qux", [" ", "::"]), ["foo", "bar", "baz", "qux"], "string_split_ext 3b");
	assert_equal(string_split_ext("foo,:bar:,baz", [":", ","]), ["foo", "", "bar", "", "baz"], "string_split_ext 3c");
	#endregion

	#region Optional Parameters Test
	assert_equal(string_split_ext("::", [":"], true), [], "string_split_ext removeEmpty 1a");
	assert_equal(string_split_ext(":,", [",", ":"], true), [], "string_split_ext removeEmpty 1b");
	assert_equal(string_split_ext("foo,:bar:baz", [",", ":"], true), ["foo", "bar", "baz"], "string_split_ext removeEmpty 2");
	assert_equal(string_split_ext("1,2|3|4|5", [",", "|"], false, 1), ["1", "2|3|4|5"], "string_split_ext removeEmpty 3");
	assert_equal(string_split_ext("1,2|3|4|5", [",", "|"], false, 3), ["1", "2", "3", "4|5"], "string_split_ext removeEmpty 4");
	assert_equal(string_split_ext("1,2|3|4|5", [",", "|"], false, 5), ["1", "2", "3", "4", "5"], "string_split_ext removeEmpty 5");
	assert_equal(string_split_ext("1,|2|3|4|5", [",", "|"], true, 2), ["1", "2|3|4|5"], "string_split_ext removeEmpty 6");
	assert_equal(string_split_ext("1,|2|3|4|5", [",", "|"], true, 3), ["1", "2", "3|4|5"], "string_split_ext removeEmpty 7");
	assert_equal(string_split_ext("1,|2|3|4|5", [",", "|"], true, 5), ["1", "2", "3", "4", "5"], "string_split_ext removeEmpty 8");
	#endregion
}