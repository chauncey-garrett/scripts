--
-- Disconnect from a VPN service
--

tell application "System Events"
	tell current location of network preferences
		-- set the name of the VPN service as listed in "System Preferences > Network Settings" here
		set VPNservice to service "UNT VPN"

		disconnect VPNservice
	end tell
end tell

