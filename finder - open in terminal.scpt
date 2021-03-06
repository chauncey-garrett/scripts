--
-- Finder - open in terminal
--
-- Downloaded From: http://c-command.com/scripts/finder/open-in-terminal
-- Last Modified: 2010-11-27
--

on run
	tell application "Finder"
		set l to the selection
		my processItems(l)
	end tell
end run

on open l
	my processItems(l)
end open

on processItems(l)
	repeat with i in l
		my processItem(i)
	end repeat
end processItems

on processItem(i)
	tell application "Finder"
		if not my canChangeDirectoryTo(i) then set i to i's container
		set a to i as alias
		set p to a's POSIX path's quoted form
	end tell
	tell application "Terminal"
		activate
		do script with command "cd " & p
	end tell
end processItem

on canChangeDirectoryTo(f)
	tell application "Finder"
		if class of f is folder then return true
		if class of f is package then return true
		if class of f is application file and name of f ends with ".app" then return true
		return false
	end tell
end canChangeDirectoryTo

