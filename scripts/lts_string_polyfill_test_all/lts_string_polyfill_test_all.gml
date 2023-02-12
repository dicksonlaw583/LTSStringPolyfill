///@func lts_string_polyfill_test_all()
///@return {Bool}
///@desc Test the LTS string polyfill functions.

function lts_string_polyfill_test_all() {
	global.__test_fails__ = 0;
	var timeA, timeB;
	timeA = current_time;
	
	/* v Tests here v */
	lts_string_polyfill_test_string_concat();
	/* ^ Tests here ^ */
	
	timeB = current_time;
	show_debug_message("LTS String Polyfill tests done in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__ == 0;
}