/*
This file shows a custom, barebones test script made functional without using any other libs
*/

global errorcode := 0

/*
Tests
*/

assert( 4+3 == 2+5, "Simple_Addition_Check")

s := "28"
s += "42"
i := 28
i += 42
assert( s == i, "Number_In_String_Concat_Test")

assert(Instr("abcd", "b") == 2, "Instr_Check")

/*
Exit
*/

ExitApp, % errorcode
return


assert(eq, testName, msgFail=""){
	if (!eq){
		FileAppend, FAIL: %testName% %msgFail%`n, *
		errorcode := 1
	} else {
		FileAppend, PASS: %testName%`n, *
	}
}