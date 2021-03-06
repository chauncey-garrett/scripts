(*

Veritrope.com

TOGGLE SHOWING ONLY OPEN APPLICATIONS IN THE DOCK

VERSION 1.0

June 28, 2012



// TERMS OF USE:

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.

To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.



// LIKE THIS SCRIPT?

If this AppleScript is helpful to you, please show your support here:

http://veritrope.com/support



// SCRIPT INFORMATION AND UPDATE PAGE

http://veritrope.com/code/Only-Show-Open-Applications-In-The-Dock



// REQUIREMENTS

More details on the script information page.



// CHANGELOG

1.0  Initial Version



*)

(*

======================================

// MAIN PROGRAM

======================================

*)
-- RESET THE VALUE BEFORE RUNNING
set current_Value to ""

-- ENCLOSING THIS IN A 'TRY BLOCK' LETS THE SCRIPT WORK
-- IF THERE ISN'T ANY VALUE FOR "com.apple.dock static-only"
try

	-- CHECKS TO SEE IF THE VALUE EXISTS
	set current_Value to (do shell script "defaults read com.apple.dock static-only")

	-- "1" MEANS DOCK IS IN 'OPEN ITEMS ONLY MODE'
	-- "0" MEANS DOCK IS THE DEFAULT DISPLAY MODE
	-- A MISSING VALUE ERROR WILL EXIT OUT FROM THIS 'TRY BLOCK'

	if current_Value is "1" then
		-- DOCK IS IN 'OPEN ITEMS ONLY MODE' / TOGGLE BACK TO NORMAL
		do shell script "defaults write com.apple.dock static-only -bool FALSE"
	else
		if current_Value is "0" then
			-- DOCK IS IN THE DEFAULT DISPLAY MODE / TOGGLE TO 'OPEN ITEMS ONLY MODE'
			do shell script "defaults write com.apple.dock static-only -bool TRUE"
		end if
	end if

	-- RELAUNCH THE DOCK TO SHOW THE CHANGE
	do shell script "killall Dock"
end try

-- IF YOU'VE NEVER RUN THIS BEFORE, CREATE THE VALUE IN OPEN ITEMS ONLY MODE'
if current_Value is "" then
	do shell script "defaults write com.apple.dock static-only -bool TRUE"
	do shell script "killall Dock"
end if

