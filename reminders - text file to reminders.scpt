--
-- Text file to Reminders List
--

-- Change this to the path to your downloaded text file with your tasks in it! (Note the : instead of a / between folders) Or, just name them Reminders.txt and put them in your downloads folder
set theFileContents to (read file "Users:chauncey:Desktop:reminders.txt")
set theLines to paragraphs of theFileContents

repeat with eachLine in theLines
	tell application "Reminders"
		tell list "Reminders" -- Change this to your Reminders list name
			make new reminder with properties {name:eachLine}
		end tell
	end tell
end repeat
