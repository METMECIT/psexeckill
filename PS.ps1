if (Get-Process PsExec) {
netstat -ano > C:\scripts\PS.txt
$To      = "email@domain.com" 
$From    = "PSEXECrunning@domain.com" 
$Subject = "PSEXEC RUNNING" 
$Body    = "PSEXEC RUNNING!!!!" 
# Create mail message 
$Message = New-Object System.Net.Mail.MailMessage $From, $To, $Subject, $Body 
$AttchmentText = get-content C:\scripts\PS.txt
# Now create Attachement content type
$ct = new-object System.Net.Mime.Contenttype
$ct.name = 'PS.txt'
# Now create an attachment of that type
$attachment = [System.Net.Mail.Attachment]::CreateAttachmentFromString($attchmenttext,$ct)
# Next add Attachment to the message
$message.Attachments.Add($attachment)
# and now create smtp server
$smtpServer = "domain-com.mail.protection.outlook.com"
$smtp = new-object Net.Mail.SmtpClient($smtpServer)
$smtp.Send($message)
taskkill /IM cmd.exe /F
taskkill /IM PsExec.exe /F
taskkill /IM PSEXESVC.exe /F
}
Else {
if (Get-Process PsExec64) {
netstat -ano > C:\scripts\PS.txt
$To      = "email@domain.com" 
$From    = "PSEXEC64running@domain.com" 
$Subject = "PSEXEC64 RUNNING" 
$Body    = "PSEXEC64 RUNNING!!!!" 
# Create mail message 
$Message = New-Object System.Net.Mail.MailMessage $From, $To, $Subject, $Body 
$AttchmentText = get-content C:\scripts\PS.txt
# Now create Attachement content type
$ct = new-object System.Net.Mime.Contenttype
$ct.name = 'PS.txt'
# Now create an attachment of that type
$attachment = [System.Net.Mail.Attachment]::CreateAttachmentFromString($attchmenttext,$ct)
# Next add Attachment to the message
$message.Attachments.Add($attachment)
# and now create smtp server
$smtpServer = "domain-com.mail.protection.outlook.com"
$smtp = new-object Net.Mail.SmtpClient($smtpServer)
$smtp.Send($message)
taskkill /IM cmd.exe /F
taskkill /IM PsExec64.exe /F
taskkill /IM PSEXESVC.exe /F
}
Else {
Break
}}
