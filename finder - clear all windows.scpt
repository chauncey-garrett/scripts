--
-- Clear all windows from screen
--

tell application "Finder"
	-- minimize all non-Finder windows
	set visible of every process whose visible is true and name is not "Finder" to false

	-- close all Finder windows
	close every window

	-- open a Finder window after all other applications are hidden. Adjust the numbers to change the position of the Finder window
	--open home
	--set the current view of the front Finder window to icon view
	--set the position of the front Finder window to {1000, 500}
end tell

