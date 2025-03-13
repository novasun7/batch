@echo off
rem reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v BackupProductKeyDefault

rem Not sure this always works
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v BackupProductKeyDefault > out && findstr/c:REG_SZ out > out2 && set /p key= < out2 && del out && del out2 && echo %key%