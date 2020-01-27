Add-Type -AssemblyName System.Windows.Forms

$sleepTimeInSeconds = 1
$devicePath = "HID\VID_046D&PID_C077\7&194B0A87&0&0000"

function pressAlt([int]$sleep){     
	while($true)
        {
        Write-Host "Press Q to exit"  
        $Q=$HOST.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
		sleep -Seconds $sleep
		[System.Windows.Forms.SendKeys]::SendWait("%")   
		if($Q.character -eq 'q'){break}
        }
}

Disable-PnpDevice -InstanceId $devicePath -confirm:$false
scrnsave.scr
[System.Windows.Forms.SendKeys]::SendWait("%")  
pressAlt $sleepTimeInSeconds
Enable-PnpDevice -InstanceId $devicePath -confirm:$false