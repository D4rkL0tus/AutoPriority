


function main() {
	$GETID = Get-Process | Format-Table ID, ProcessName
	Write-Output($GETID)
	$USERINPUT = Read-Host("Select process to adjust priority")
	$USERINPUT2 = Read-Host("What Priority Class? e.g. High, BelowNormal, AboveNormal")
	
	if ($USERINPUT -eq "chrome" -or $USERINPUT -eq "edge" -or $USERINPUT -eq "brave" -or $USERINPUT -eq "firefox") {
			Get-Process -Id $USERINPUT | Foreach-Object ( $_.PriorityClass = $USERINPUT2 )
		}
	
	(Get-Process -Id $USERINPUT).PriorityClass = $USERINPUT2
		
}

main
