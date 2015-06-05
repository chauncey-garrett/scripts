(*

http://veritrope.com

Open Safari Tabs in Firefox

Version 1.0

December 15, 2011

Project Status, Latest Updates, and Comments Collected at:

http://veritrope.com/code/open-all-safari-tabs-in-firefox/

*)

set list_Tabs to {}
tell application "Safari"
	set the_Tabs to (tabs of every window)
	repeat with the_Tab in the_Tabs
		set the_Items to (every item of the_Tab)
		repeat with the_Item in the_Items
			copy URL of the_Item to end of list_Tabs
		end repeat
	end repeat
end tell

tell application "Firefox"
	activate
	repeat with list_Tab in list_Tabs
		do shell script "open -a Firefox" & space & quoted form of list_Tab
	end repeat
end tell

