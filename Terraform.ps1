New-NetFirewallRule -DisplayName 'Port 5985 Inbound' -Name 'Port 5985 Inbound' -Direction Inbound -LocalPort '5985' -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName 'Port 5985 Outbound' -Name 'Port 5985 Outbound' -Direction Outbound -LocalPort '5985' -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName 'Port 5986 Inbound' -Name 'Port 5986 Inbound' -Direction Inbound -LocalPort '5986' -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName 'Port 5986 Outbound' -Name 'Port 5986 Outbound' -Direction Outbound -LocalPort '5986' -Protocol TCP -Action Allow

Enable-PSRemoting
winrm set winrm/config/client/auth '@{Basic="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
