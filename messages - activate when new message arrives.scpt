--
-- Messages - activate when new message arrives
--

using terms from application "Messages"
	on message received theText from theBuddy for theChat
		set mWin to the first window whose name starts with "Messages"
		set (the visible of mWin) to true
	end message received
end using terms from

