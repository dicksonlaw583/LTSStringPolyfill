///@func lts_string_polyfill_test_string_join_ext()
///@desc Test string_join_ext polyfill.

function lts_string_polyfill_test_string_join_ext() {
	#region Basic Test
	assert_equal(string_join_ext(",", []), "", "string_join_ext 0");
	assert_equal(string_join_ext(",", ["foo"]), "foo", "string_join_ext 1");
	assert_equal(string_join_ext(",", ["foo", "bar"]), "foo,bar", "string_join_ext 2");
	assert_equal(string_join_ext(",", ["foo", "bar", 3, "baz"]), "foo,bar,3,baz", "string_join_ext 3");
	#endregion

	#region Offset and range tests
	assert_equal(string_join_ext("-", [1, 4, 5, 6, 7], 1), "4-5-6-7", "string_join_ext offset 1");
	assert_equal(string_join_ext("-", [1, 4, 5, 6, 7], -3), "5-6-7", "string_join_ext offset 2");
	assert_equal(string_join_ext("-", [1, 4, 5, 6, 7], 1, 3), "4-5-6", "string_join_ext range 1");
	assert_equal(string_join_ext("-", [4, 5, 6, 7, 1], -2, -4), "7-6-5-4", "string_join_ext range 2");
	#endregion
}
