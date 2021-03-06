--
-- EagleFiler - remove duplicate files
--
-- Downloaded From: http://c-command.com/scripts/eaglefiler/remove-duplicate-files
-- Last Modified: 2011-10-20
--

tell application "EagleFiler"
	set _checksums to {}
	set _recordsSeen to {}
	set _records to selected records of browser window 1
	set _trash to trash of document of browser window 1
	repeat with _record in _records
		set _checksum to _record's checksum
		set _matches to my findMatch(_checksum, _checksums, _recordsSeen)
		if _matches is {} then
			set _checksums to {_checksum} & _checksums
			set _recordsSeen to {_record} & _recordsSeen
		else
			set _otherRecord to item 1 of _matches
			if _otherRecord's modification date > _record's modification date then
				set _record's container to _trash
			else
				set _otherRecord's container to _trash
				set _checksums to {_checksum} & _checksums
				set _recordsSeen to {_record} & _recordsSeen
			end if
		end if
	end repeat
end tell

on findMatch(_checksum, _checksums, _recordsSeen)
	tell application "EagleFiler"
		if _checksum is "" then return {}
		if _checksums contains _checksum then
			repeat with i from 1 to length of _checksums
				if item i of _checksums is _checksum then
					return item i of _recordsSeen
				end if
			end repeat
		end if
		return {}
	end tell
end findMatch

