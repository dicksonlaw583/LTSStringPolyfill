///@func lts_string_polyfill_test_string_ext()
///@desc Test string_ext polyfill.

function lts_string_polyfill_test_string_ext() {
	#region Basic Test
	assert_equal(string_ext("foo", ["bar"]), "foo", "string_ext 0");
	assert_equal(string_ext("hello {0}", ["foo"]), "hello foo", "string_ext 1");
	assert_equal(string_ext("{0} and {1}", ["foo", 3]), "foo and 3", "string_ext 2");
	assert_equal(string_ext("{0} and {1}", ["bar"]), "bar and {1}", "string_ext 3");
	#endregion
}