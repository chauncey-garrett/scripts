--
-- EagleFiler - web archive to pdf
--
-- Downloaded From: http://c-command.com/scripts/eaglefiler/web-archive-to-pdf
-- Last Modified: 2011-02-01
--

on run
	tell application "EagleFiler"
		set _selection to selected records of browser window 1
		repeat with _record in _selection
			if _record's filename ends with ".webarchive" then
				set _pdfRecord to my convertWebArchiveToPDF(_record)
				set _trash to trash of _record's library document
				set _record's container to _trash
			end if
		end repeat
	end tell
end run

on convertWebArchiveToPDF(_webArchiveRecord)
	tell application "EagleFiler"
		set _webArchiveFile to _webArchiveRecord's file
		set _webArchivePath to _webArchiveFile's POSIX path
		set _pdfPath to my tempPDFPathForRecord(_webArchiveRecord)
		my runWeb2PDF(_webArchivePath, _pdfPath)
		set _files to {_pdfPath as POSIX file}
		set _newRecords to import files _files with deleting afterwards
		set _pdfRecord to item 1 of _newRecords
		my copyMetadata(_webArchiveRecord, _pdfRecord)
		return _pdfRecord
	end tell
end convertWebArchiveToPDF

on runWeb2PDF(_webArchivePath, _pdfPath)
	set _web2pdf to my findWeb2PDF()
	set _script to _web2pdf's quoted form & " print "
	set _script to _script & _webArchivePath's quoted form & " "
	set _script to _script & _pdfPath's quoted form & " id"
	do shell script _script
end runWeb2PDF

on copyMetadata(_source, _dest)
	tell application "EagleFiler"
		set source URL of _dest to _source's source URL
		set container of _dest to _source's container
		set note text of _dest to _source's note text
		set _tags to _source's assigned tags
		set assigned tags of _dest to _tags
		set title of _dest to _source's title
		set from name of _dest to _source's from name
		set label index of _dest to _source's label index
		set creation date of _dest to _source's creation date
		set modification date of _dest to _source's modification date
	end tell
end copyMetadata

on tempPDFPathForRecord(_record)
	set _pdfName to my pdfNameForRecord(_record)
	set _tempFolder to do shell script "mktemp -d -t 'EFWebArchiveToPDF'"
	return _tempFolder & "/" & _pdfName
end tempPDFPathForRecord

on pdfNameForRecord(_record)
	tell application "EagleFiler"
		set _name to _record's filename
		set _extensionLength to length of ".webarchive"
		set _base to characters 1 thru -_extensionLength of _name
		return _base & "pdf"
	end tell
end pdfNameForRecord

on findWeb2PDF()
	set _bundle to (path to application "EagleFiler")'s POSIX path
	set _framework to _bundle & "Contents/Frameworks/WashFramework.framework"
	return _framework & "/Helpers/efweb2pdf"
end findWeb2PDF

