(*

Veritrope.com

OmniFocus - Weekly Project Report Generator

Authored by Chris Brogan and Rob Trew

Version 1.0

February 5, 2012



// SCRIPT INFORMATION AND UPDATE PAGE

http://veritrope.com/code/omnifocus-weekly-project-report-generator



Originally Posted At:

http://cl.ly/1H1M0S3R160x3401150u



// REQUIREMENTS

More details on the script information page.



//CHANGELOG

1.0  Initial Release



*)

(*

======================================

// MAIN PROGRAM

======================================

*)

tell application "OmniFocus"

	--SET THE REPORT TITLE
	set ExportList to "Current List of Active Projects" & return & "---" & return & (current date) & return & return as Unicode text

	--PROCESS THE PROJECTS
	tell default document
		set refFolders to a reference to (flattened folders where hidden is false)
		repeat with idFolder in (id of refFolders) as list
			set oFolder to folder id idFolder
			set ExportList to ExportList & my IndentAndProjects(oFolder) & return
		end repeat

		--ASSEMBLE THE COMPLETED TASK LIST
		set ExportList to ExportList & return & return & "Completed Tasks From Last 7 days" & return & "---" & return & return & "<span style='font-size:8pt'>"
		set week_ago to (current date) - 7 * days
		set refDoneInLastWeek to a reference to (flattened tasks where (completion date ≥ week_ago))
		set {lstName, lstContext, lstProject, lstDate} to {name, name of its context, name of its containing project, completion date} of refDoneInLastWeek
		set strText to ""
		repeat with iTask from 1 to length of lstName
			set {strName, varContext, varProject, varDate} to {item iTask of lstName, item iTask of lstContext, item iTask of lstProject, item iTask of lstDate}
			if varDate is not missing value then set strText to strText & short date string of varDate & " - "
			if varProject is not missing value then set strText to strText & " [" & varProject & "] - "
			set strText to strText & strName
			if varContext is not missing value then set strText to strText & " *@" & varContext & "*"
			set strText to strText & "  " & return
		end repeat
	end tell

	set ExportList to ExportList & strText & "</span>" as Unicode text

	--CHOOSE FILE NAME FOR EXPORT AND SAVE AS MARKDOWN
	set fn to choose file name with prompt "Name this file" default name "Weekly Development Report" & ¬
		".md" default location (path to desktop folder)
	tell application "System Events"
		set fid to open for access fn with write permission
		write ExportList to fid
		close access fid
	end tell
end tell

(*

======================================

// MAIN HANDLER SUBROUTINES

======================================

*)

on IndentAndProjects(oFolder)
	tell application id "OFOC"
		set show_section to false
		set strIndent to "##"
		set oParent to container of oFolder
		repeat while class of oParent is folder
			set strIndent to strIndent & "#"
			set oParent to container of oParent
			set show_section to true
		end repeat

		set {dlm, my text item delimiters} to {my text item delimiters, return & return}
		set dteNow to (current date)
		set strActive to (name of (projects of oFolder where its status is active and it is not singleton action holder and its defer date is missing value or defer date < dteNow)) as string

		set my text item delimiters to dlm

		return strIndent & name of oFolder & return & strActive & return
	end tell
end IndentAndProjects


