--
-- Finder - copy file url
--
-- Downloaded From: http://c-command.com/scripts/finder/copy-url
-- Last Modified: 2010-11-27
--

on run
	tell application "Finder"
		set theList to the selection
		my processItems(theList)
	end tell
end run

on open theList
	my processItems(theList)
end open

on processItems(theList)
	set theURLs to {}
	repeat with theItem in theList
		copy my processItem(theItem) to end of theURLs
	end repeat
	set AppleScript's text item delimiters to return
	set theResult to theURLs as string
	set the clipboard to theResult
	return theResult
end processItems

on processItem(theItem)
	tell application "Finder"
		set theAlias to theItem as alias
		set thePath to theAlias's POSIX path's quoted form
	end tell
	return my urlFromPath(thePath)
end processItem

on urlFromPath(thePath)
	return do shell script "python2.5 -c 'from Foundation import NSURL; import sys; s = unicode(sys.argv[1], \"utf-8\"); print NSURL.fileURLWithPath_(s) ' " & thePath
end urlFromPath

