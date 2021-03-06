--
-- Keyboard backlighting - off
--

tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.keyboard"
end tell

tell application "System Events"
	-- If we don't have UI Elements enabled, then nothing is really going to work.
	if UI elements enabled then
		tell application process "System Preferences"
			get properties
			click radio button "Keyboard" of tab group 1 of window "Keyboard"
			set the_checkbox to checkbox "Adjust keyboard brightness in low light" of tab group 1 of window "Keyboard"
			tell the_checkbox
				if (its value as boolean) then click the_checkbox
			end tell
		end tell
		--tell application "System Preferences" to quit
	else
		-- GUI scripting not enabled.  Display an alert
		tell application "System Preferences"
			activate
			set current pane to pane "com.apple.preference.universalaccess"
			display dialog "UI element scripting is not enabled. Please activate \"Enable access for assistive devices\""
		end tell
	end if
end tell

