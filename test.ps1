Add-Type -AssemblyName System.Windows.Forms

$sleepTimeInSeconds = 1
$MouseConnected = Get-WmiObject Win32_USBControllerDevice | %{[wmi]$_.dependent} | ?{$_.pnpclass -eq 'Mouse'}

function pressAlt([int]$sleep){     
	while($true)
        {
        $Q=$HOST.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
		sleep -Seconds $sleep
		[System.Windows.Forms.SendKeys]::SendWait("%")   
		if($Q.character -eq 'q'){break}
        }
}

$MouseConnected | Disable-PnpDevice -confirm:$false
scrnsave.scr
[System.Windows.Forms.SendKeys]::SendWait("%")  
pressAlt $sleepTimeInSeconds
$MouseConnected | Enable-PnpDevice -confirm:$false