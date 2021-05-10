# set-executionpolicy remotesigned
# 如果安装报错，可能要先执行上面的powershell命令

# Delete and stop the service if it already exists.
if (Get-Service filebeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='filebeat'"
  $service.StopService()
  Start-Sleep -s 1
  $service.delete()
}

$workdir = Split-Path $MyInvocation.MyCommand.Path

# Create the new service.
New-Service -name filebeat `
  -displayName Filebeat `
  -binaryPathName "`"$workdir\filebeat.exe`" -environment=windows_service -c `"$workdir\filebeat.yml`" -path.home `"$workdir`" -path.data `"d:\filebeat\fbdata`" -path.logs `"d:\filebeat\logs`" -E logging.files.redirect_stderr=true"

# Attempt to set the service to delayed start using sc config.
Try {
  Start-Process -FilePath sc.exe -ArgumentList 'config filebeat start= delayed-auto'
}
Catch { Write-Host -f red "An error occured setting the service to delayed start." }
