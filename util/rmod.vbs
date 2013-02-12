Set args = Wscript.Arguments
Set objFS = CreateObject("Scripting.FileSystemObject")
Set objFile = objFS.OpenTextFile(args(0))

Do Until objFile.AtEndOfStream
    strLine = objFile.ReadLine
    If ((InStr(strLine, """ca_modules_functions""") > 0) And (InStr(strLine, """ca_modules_functions"",") = 0)) Then
		WScript.Echo strLine + ","
    	WScript.Echo vbTab + vbTab + """rmod"""
	Else
		WScript.Echo strLine
    End If
Loop