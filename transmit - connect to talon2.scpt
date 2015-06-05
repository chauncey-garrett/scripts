--
-- Connect and mount Transmit volume
--

tell application "Transmit"
	-- change server name here
	set myFave to item 1 of (favorites whose name is "Talon2")
	tell current tab of (make new document at end)
		connect to myFave with mount
		close
	end tell
end tell


