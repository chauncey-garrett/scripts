--
-- Mail - message list - page down
--

-- Downloaded From: http://c-command.com/scripts/mail/message-list-page-down
-- Last Modified: 2014-05-25

tell application "System Events"
	tell process "Mail"
		set _messageList to scroll area 1 of splitter group 1 of splitter group 1 of window 1
		click button 3 of scroll bar 1 of _messageList -- increment page
	end tell
end tell

