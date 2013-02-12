Set objFS = CreateObject("Scripting.FileSystemObject")
strFolder = "build\MPMissions"
Set objFolder = objFS.GetFolder(strFolder)

For Each Folder In objFolder.SubFolders
	Folder.Name = Replace(Folder.Name, "dayz.", "dayz_1.")
Next