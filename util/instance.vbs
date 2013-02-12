Set args = Wscript.Arguments
Set objFS = CreateObject("Scripting.FileSystemObject")
Set objFile = objFS.OpenTextFile(args(0))

Do Until objFile.AtEndOfStream
    strLine = objFile.ReadLine
    If InStr(strLine, "dayZ_instance")> 0 Then
    	strLine = "dayZ_instance = " + args(1) + ";"
    End If 
    WScript.Echo strLine
Loop