Disable-PnpDevice -InstanceId "HID\VID_046D&PID_C077\7&194B0A87&0&0000" -confirm:$false
scrnsave.scr
[void][System.Console]::ReadKey($FALSE)
Enable-PnpDevice -InstanceId "HID\VID_046D&PID_C077\7&194B0A87&0&0000" -confirm:$false