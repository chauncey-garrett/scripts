--
-- Mail - message list - page up
--

-- Downloaded From: http://c-command.com/scripts/mail/message-list-page-up
-- Last Modified: 2014-05-25

tell application "System Events"
	tell process "Mail"
		set _messageList to scroll area 1 of splitter group 1 of splitter group 1 of window 1
		click button 4 of scroll bar 1 of _messageList -- decrement page
	end tell
end tell

