﻿New-NetFirewallRule -DisplayName 'Port 5985 Inbound' -Name 'Port 5985 Inbound' -Direction Inbound -LocalPort '5985' -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName 'Port 5985 Outbound' -Name 'Port 5985 Outbound' -Direction Outbound -LocalPort '5985' -Protocol TCP -Action Allow