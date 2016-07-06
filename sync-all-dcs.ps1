# Bohack
# 05/17/16
# Force sync on Active Directory (Requires AD Module)
Import-Module ActiveDirectory

foreach ($dc in Get-ADGroupMember 'Domain Controllers') {
	repadmin /syncall $dc.name /APed
	}
	
repadmin /replsummary