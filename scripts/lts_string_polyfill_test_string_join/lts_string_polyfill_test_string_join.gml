///@func lts_string_polyfill_test_string_join()
///@desc Test string_join polyfill.

function lts_string_polyfill_test_string_join() {
	assert_equal(string_join(",", "foo"), "foo", "string_join 1");
	assert_equal(string_join(",", "foo", "bar"), "foo,bar", "string_join 2");
	assert_equal(string_join(",", "foo", "bar", 3, "baz"), "foo,bar,3,baz", "string_join 3");
}