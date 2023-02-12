///@func lts_string_polyfill_test_string_foreach()
///@desc Test string_foreach polyfill.

function lts_string_polyfill_test_string_foreach() {
	var spy = new LTSStringPolyfill_TestSpy();
	
	#region Basic tests
	spy.clear();
	string_foreach("", spy.callback);
	assert_equal(spy.calls, [], "string_foreach 0");
	
	spy.clear();
	string_foreach("a", spy.callback);
	assert_equal(spy.calls, [["a", 1]], "string_foreach 1");
	
	spy.clear();
	string_foreach("abc", spy.callback);
	assert_equal(spy.calls, [["a", 1], ["b", 2], ["c", 3]], "string_foreach 2");
	#endregion
	
	#region Offset and range tests
	spy.clear();
	string_foreach("abc", spy.callback, 2);
	assert_equal(spy.calls, [["b", 2], ["c", 3]], "string_foreach offset 1");
	
	spy.clear();
	string_foreach("abc", spy.callback, -2)
	assert_equal(spy.calls, [["b", 2], ["c", 3]], "string_foreach offset 2");
	
	spy.clear();
	string_foreach("abcd", spy.callback, 2, 2);
	assert_equal(spy.calls, [["b", 2], ["c", 3]], "string_foreach range 1");
	
	spy.clear();
	string_foreach("abcd", spy.callback, -2, -2);
	assert_equal(spy.calls, [["c", 3], ["b", 2]], "string_foreach range 2");
	#endregion
}