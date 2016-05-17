# Bohack
# 05/17/16
# Get the installed Windows features and roles

Get-WindowsFeature | where {$_.Installed -eq "True"} | Select DisplayName