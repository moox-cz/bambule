Get-ADGroup -Filter {Name -like 'webportal_*'} | % {
	$grpName = $_.Name
	Get-ADGroupMember $_ | % {
		Write-Output "$($grpName);$($_.saMAccountName);$($_.Name)"
	}
}

