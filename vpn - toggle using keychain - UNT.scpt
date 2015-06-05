--
-- Toggle a VPN service, using OS X's builtin Keychain application when connecting
--

-- Toggle the VPN service
tell application "System Events"
	-- set the keychain account name here
	set theScript to "security find-generic-password -a \"unt-vpn\" -w"
	set thePassword to do shell script theScript

	tell current location of network preferences
		-- set the name of the VPN service listed in "System Preferences > Network Settings" here
		set VPNservice to service "UNT VPN"
		set isConnected to connected of current configuration of VPNservice

		if isConnected then
			disconnect VPNservice
		else
			connect VPNservice
			--delay 2
			--keystroke thePassword
			--keystroke return
			--delay 2
			--keystroke return
		end if
	end tell
end tell

-- Display IP address
set ipAddress to (do shell script "curl --silent http://icanhazip.com") as text
delay 2
display notification ipAddress as string with title "Current IP Address"

