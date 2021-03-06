(*

Veritrope.com

APP TOGGLE

Version 1.0

January 13, 2012



Project Status, Latest Updates, and Comments Collected at:

http://veritrope.com/code/toggle-an-app-on-off



// CHANGELOG:



1.0      INITIAL VERSION



// RECOMMENDED INSTALLATION INSTRUCTIONS:



-- Change the property below for app_Name to the

name of the application you'd like to toggle on/off.



-- Save as an application and trigger via

a keyboard-driven launcher app (like Alfred or LaunchBar).



-- Note: Many launcher apps allow you to pass information

to an AppleScript. This will allow you to modify this script

to toggle more than one app  See the instructions of

your launcher app for details on how to do this!



*)

(*

======================================

// USER SWITCHES (YOU CAN CHANGE THESE!)

======================================

*)

--ENTER THE NAME OF THE APP
--THAT YOU WOULD LIKE TO TOGGLE
--IN THE PROPERTY BELOW...
property app_Name : ""

(*

======================================

// MAIN PROGRAM

======================================

*)

if appIsRunning(app_Name) then
	do shell script "killall " & (quoted form of app_Name)
else
	do shell script "open -a " & (quoted form of app_Name)
end if


(*

======================================

// MAIN HANDLER SUBROUTINES

======================================

*)

on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning

