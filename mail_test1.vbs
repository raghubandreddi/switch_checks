Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8
Const FileToBeUsed = "syscoSWHC1.txt"
Dim objEmail
Dim fso, f
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.OpenTextFile(FileToBeUsed, ForReading)
Set objEmail = CreateObject("CDO.Message")
objEmail.Textbody = "Switch Error report"
objEmail.AddAttachment "E:\switchscript\syscoSWHC1.txt"
objEmail.AddAttachment "E:\switchscript\syscoSWHC.txt"
f.Close
objEmail.TO ="ssanstor@in.ibm.com"
objEmail.From = "SAPswitches@sysco.com"
objEmail.Subject = "Health Check"
objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 
objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "intrelay.sysco.com"
objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25 
objEmail.Configuration.Fields.Update     
objEmail.Send
Set f = Nothing
Set fso = Nothing