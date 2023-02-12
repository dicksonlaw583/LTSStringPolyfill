///@func lts_string_polyfill_test_string_concat()
///@desc Test string_concat polyfill.

function lts_string_polyfill_test_string_concat() {
	assert_equal(string_concat("foo"), "foo", "string_concat 1");
	assert_equal(string_concat("foo", "bar"), "foobar", "string_concat 2");
	assert_equal(string_concat("foo", "bar", 3, "baz"), "foobar3baz", "string_concat 3");
}