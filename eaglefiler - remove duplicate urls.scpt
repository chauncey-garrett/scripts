--
-- EagleFiler - remove duplicate urls
--
-- Downloaded From: http://c-command.com/scripts/eaglefiler/remove-duplicate-urls
-- Last Modified: 2011-10-20
--

tell application "EagleFiler"
	set _urls to {}
	set _recordsSeen to {}
	set _records to selected records of browser window 1
	set _trash to trash of document of browser window 1
	repeat with _record in _records
		set _url to _record's source URL
		set _matches to my findMatch(_url, _urls, _recordsSeen)
		if _matches is {} then
			set _urls to {_url} & _urls
			set _recordsSeen to {_record} & _recordsSeen
		else
			set _otherRecord to item 1 of _matches
			if _otherRecord's modification date > _record's modification date then
				set _record's container to _trash
			else
				set _otherRecord's container to _trash
				set _urls to {_url} & _urls
				set _recordsSeen to {_record} & _recordsSeen
			end if
		end if
	end repeat
end tell

on findMatch(_url, _urls, _recordsSeen)
	tell application "EagleFiler"
		if _url is "" then return {}
		if _urls contains _url then
			repeat with i from 1 to length of _urls
				if item i of _urls is _url then
					return item i of _recordsSeen
				end if
			end repeat
		end if
		return {}
	end tell
end findMatch

