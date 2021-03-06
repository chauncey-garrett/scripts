--
-- Numbers - Transpose cells
--   - select range
--   - run
--   - paste transposed values where wanted
--

try
	tell application "Numbers" to tell front document to tell active sheet
		set selected_table to first table whose class of selection range is range
		tell selected_table
			set my_selection to the selection range
			set first_col to address of first column of my_selection
			set last_col to address of last column of my_selection
			set first_row to address of first row of my_selection
			set last_row to address of last row of my_selection
			set str to ""
			repeat with i from first_col to last_col
				repeat with j from first_row to last_row
					set str to str & (value of cell j of column i of selected_table) & tab
				end repeat
				set str to str & return -- add line return after row
			end repeat
		end tell
	end tell
	set the clipboard to str
	display notification "Ready to paste transposed values" with title "Numbers"
on error
	display dialog "Select a range first and then try again"
end try

