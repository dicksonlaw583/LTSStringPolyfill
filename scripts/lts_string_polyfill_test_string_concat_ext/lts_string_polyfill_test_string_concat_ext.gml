///@func lts_string_polyfill_test_string_concat_ext()
///@desc Test string_concat_ext polyfill.

function lts_string_polyfill_test_string_concat_ext() {
	#region Basic Test
	assert_equal(string_concat_ext([]), "", "string_concat_ext 0");
	assert_equal(string_concat_ext(["foo"]), "foo", "string_concat_ext 1");
	assert_equal(string_concat_ext(["foo", "bar"]), "foobar", "string_concat_ext 2");
	assert_equal(string_concat_ext(["foo", "bar", 3, "baz"]), "foobar3baz", "string_concat_ext 3");
	#endregion

	#region Offset and range tests
	assert_equal(string_concat_ext([1, 4, 5, 6, 7], 1), "4567", "string_concat_ext offset 1");
	assert_equal(string_concat_ext([1, 4, 5, 6, 7], -3), "567", "string_concat_ext offset 2");
	assert_equal(string_concat_ext([1, 4, 5, 6, 7], 1, 3), "456", "string_concat_ext range 1");
	assert_equal(string_concat_ext([4, 5, 6, 7, 1], -2, -4), "7654", "string_concat_ext range 2");
	#endregion
}
