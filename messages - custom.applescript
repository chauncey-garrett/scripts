(*

AUTO RESIZE BUDDY LIST for "Messages Beta"
version 0.1.2

It's assumed that the "Show all my accounts in one list" option is on (otherwise repeat as many times as necessary the 5 relevant lines with the correspondent adjusted window names).

If your "Messages" is localized to a language other than English, you just have to edit the window names accordingly.

The 3 "bounds" lines allow for the window to resize only in it's height: for it to adjust to both the number of buddies and the width of their combined name and status message, you can remove them.

The "delay" values allow for the script to manage small login event's small time discripancies and to act only after a contact's logout animation is over.

For "Buddy Became Available" and "Buddy Became Unavailable" events.
Tiago do Vale 2012

*)

on AutoResize()
	tell application "Messages"
		if zoomed of window "Buddies" = false then
			set {x, y, x2, y2} to bounds of window "Buddies"
			set zoomed of window "Buddies" to true
			set {a, b, a2, b2} to bounds of window "Buddies"
			set bounds of window "Buddies" to {x, y, x2, b2}
		end if
	end tell
end AutoResize

using terms from application "Messages"
	AutoResize()
end using terms from

using terms from application "Messages"
	
	#
	# Message received
	#
	
	on message received theMessage from theBuddy for theChat
		-- bring Messages forward when a new message arrives
		set mWin to the first window whose name starts with "Messages"
		set (the visible of mWin) to true
	end message received
	
	#
	# Buddy available
	#
	
	on buddy became available theBuddy
		delay 0.2
		AutoResize()
	end buddy became available
	
	#
	# Buddy unavailable
	#
	
	on buddy became unavailable theBuddy
		delay 2.2
		AutoResize()
	end buddy became unavailable
	
	##
	## The following are unused but need to be defined to avoid an error
	##
	
	#
	# Received text invite
	#
	
	on received text invitation theText from theBuddy for theChat
		--accept theChat
	end received text invitation
	
	#
	# Received audio invite
	#
	
	on received audio invitation theText from theBuddy for theChat
		--accept theChat
	end received audio invitation
	
	#
	# Received video invite
	#
	
	on received video invitation theText from theBuddy for theChat
		--accept theChat
	end received video invitation
	
	#
	# Received remote screen sharing invite
	#
	
	on received remote screen sharing invitation from theBuddy for theChat
		--accept theChat
	end received remote screen sharing invitation
	
	#
	# Received local screen sharing invite
	#
	
	on received local screen sharing invitation from theBuddy for theChat
		--accept theChat
	end received local screen sharing invitation
	
	#
	# Received file transfer invite
	#
	
	on received file transfer invitation theFileTransfer
		--accept theFileTransfer
	end received file transfer invitation
	
	#
	# Received buddy authorization request
	#
	
	on buddy authorization requested theRequest
		--accept theRequest
	end buddy authorization requested
	
	#
	# Message sent
	#
	
	on message sent theMessage for theChat
		
	end message sent
	
	#
	# Chat room message received
	#
	
	on chat room message received theMessage from theBuddy for theChat
		
	end chat room message received
	
	#
	# Active chat room message received
	#
	
	on active chat message received theMessage
		
	end active chat message received
	
	#
	# Addressed chat room message received
	#
	
	on addressed chat room message received theMessage from theBuddy for theChat
		
	end addressed chat room message received
	
	#
	# Addressed message received
	#
	
	on addressed message received theMessage from theBuddy for theChat
		
	end addressed message received
	
	#
	# AV chat started
	#
	
	on av chat started
		
	end av chat started
	
	#
	# AV chat ended
	#
	
	on av chat ended
		
	end av chat ended
	
	#
	# Login finished
	#
	
	on login finished for theService
		
	end login finished
	
	#
	# Logout finished
	#
	
	on logout finished for theService
		
	end logout finished
	
	#
	# File transfer complete
	#
	
	on completed file transfer
		
	end completed file transfer
	
end using terms from
