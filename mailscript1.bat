@echo off
set today=%date:~10,4%_%date:~4,2%_%date:~7,2%
echo Const ForReading = 1 >dd1.vbs
echo Const ForWriting = 2  >>dd1.vbs
echo Const ForAppending = 8 >>dd1.vbs
echo Const FileToBeUsed = "syscoSWHC1.txt" >>dd1.vbs
echo Dim objEmail >>dd1.vbs
echo Dim fso, f >>dd1.vbs
echo Set fso = CreateObject("Scripting.FileSystemObject") >>dd1.vbs
echo Set f = fso.OpenTextFile(FileToBeUsed, ForReading) >>dd1.vbs
echo Set objEmail = CreateObject("CDO.Message") >>dd1.vbs
echo objEmail.Textbody = "Switch Report" >>dd1.vbs
echo objEmail.AddAttachment "E:\switchscript\SYSCO_ProjectEagle_SAN_Health_check_Report_%today%.txt" >>dd1.vbs
echo objEmail.AddAttachment "E:\switchscript\SYSCO_ProjectEagle_SAN_errdump_Report_%today%.txt" >>dd1.vbs
echo f.Close >>dd1.vbs
echo objEmail.TO ="ssanstor@in.ibm.com" >>dd1.vbs
echo objEmail.From = "SAPProjectEagleswitches@sysco.com" >>dd1.vbs
echo objEmail.Subject = "SAP Project Eagle Switches SAN Health check report" >>dd1.vbs
echo objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2  >>dd1.vbs
echo objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "intrelay.sysco.com" >>dd1.vbs
echo objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25  >>dd1.vbs
echo objEmail.Configuration.Fields.Update >>dd1.vbs
echo objEmail.Send >>dd1.vbs
echo Set f = Nothing >>dd1.vbs
echo Set fso = Nothing >>dd1.vbs