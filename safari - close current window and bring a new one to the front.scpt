--
-- Safari - close current window and open new one
--

tell application "Safari"
	close window 1
	set miniaturized of window 1 to false
	activate
end tell

