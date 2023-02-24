@echo off
set today=%date:~10,4%_%date:~4,2%_%date:~7,2%
echo Const ForReading = 1 >dd.vbs
echo Const ForWriting = 2  >>dd.vbs
echo Const ForAppending = 8 >>dd.vbs
echo Const FileToBeUsed = "syscoSWHC1.txt" >>dd.vbs
echo Dim objEmail >>dd.vbs
echo Dim fso, f >>dd.vbs
echo Set fso = CreateObject("Scripting.FileSystemObject") >>dd.vbs
echo Set f = fso.OpenTextFile(FileToBeUsed, ForReading) >>dd.vbs
echo Set objEmail = CreateObject("CDO.Message") >>dd.vbs
echo objEmail.Textbody = "Switch Report" >>dd.vbs
echo objEmail.AddAttachment "E:\switchscript\SYSCO_SAN_Health_check_Report_%today%.txt" >>dd.vbs
echo objEmail.AddAttachment "E:\switchscript\SYSCO_SAN_errdump_Report_%today%.txt" >>dd.vbs
echo f.Close >>dd.vbs
echo objEmail.TO ="ssanstor@in.ibm.com" >>dd.vbs
echo objEmail.From = "SAPswitches@sysco.com" >>dd.vbs
echo objEmail.Subject = "SAP Switches SAN Health check report" >>dd.vbs
echo objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2  >>dd.vbs
echo objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "intrelay.sysco.com" >>dd.vbs
echo objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25  >>dd.vbs
echo objEmail.Configuration.Fields.Update >>dd.vbs
echo objEmail.Send >>dd.vbs
echo Set f = Nothing >>dd.vbs
echo Set fso = Nothing >>dd.vbs