--
-- Byword - open with Marked 2
--

tell application "Byword"
	set theDocument to file of document of window 1
end tell

tell application "Marked 2"
	open theDocument
	activate
end tell

