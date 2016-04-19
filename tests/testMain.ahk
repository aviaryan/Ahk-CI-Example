; #Include <Yunit\Yunit>
; #Include <Yunit\StdOut>
#Include %A_ScriptDir%\..\lib\Yunit\Yunit.ahk
#Include %A_ScriptDir%\..\lib\Yunit\StdOut.ahk

t := Yunit.Use(YunitStdOut).Test(NumberTestSuite, StringTestSuite)

; loop through the results, check if there was a FAIL case
errorcode := 0
for k,v in t.results {
    if IsObject(v){
        for k2, v2 in v {
            if (v2 != "0")
                errorcode := 1
        }
    }
}
ExitApp, % errorcode
return


/********
 The Tests
 ********/

class NumberTestSuite
{
    Begin()
    {
        this.x := 123
        this.y := 456
    }

    Test_Sum()
    {
        Yunit.assert(this.x + this.y == 579)
    }
    
    Test_Division()
    {
        Yunit.assert(this.x / this.y < 1)
        Yunit.assert(this.x / this.y > 0.25)
    }
    
    End()
    {
        this.remove("x")
        this.remove("y")
    }
    
    class Negatives
    {
        Begin()
        {
            this.x := -123
            this.y := 456
        }
        
        Test_Sum()
        {
            Yunit.assert(this.x + this.y == 333)
        }
        
        Test_Division()
        {
            Yunit.assert(this.x / this.y > -1)
            Yunit.assert(this.x / this.y < -0.25)
        }
        
        ; uncomment this for a failing test -123 - 456 != 0
        ; Test_Fails_NoMessage()
        ; {
        ;     Yunit.assert(this.x - this.y == 0)
        ; }

        End()
        {
            this.remove("x")
            this.remove("y")
        }
    }
}

class StringTestSuite
{
    Begin()
    {
        this.a := "abc"
        this.b := "cdef"
    }
    
    Test_Concat()
    {
        Yunit.assert(this.a . this.b == "abccdef")
    }
    
    Test_Substring()
    {
        Yunit.assert(SubStr(this.b, 2, 2) == "de")
    }
    
    Test_ExpectedException_Success()
    {
        this.ExpectedException := Exception("SomeCustomException")
        if SubStr(this.a, 3, 1) == SubStr(this.b, 1, 1)
            throw Exception("SomeCustomException")
    }
    
    End()
    {
        this.remove("a")
        this.remove("b")
    }
}
