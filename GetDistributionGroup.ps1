# Bohack
# 05/25/16
# Pull all of the email addresses for a distribution group

if ($args.count -lt 1) {
	write-host
	write-host "GetDistributionGroup { name of distribution group}"
	write-host
	break
	}
(Get-DistributionGroup $Args[0]).emailaddresses | select smtpaddress,addressstring