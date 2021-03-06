--
-- SuperNEW for Safari
--
-- Use after the last Safari window has been closed to unminimize the last minimized window.
-- If a window is currently open or there are no more windows available, a new window will be created with bookmarks displayed and the address bar selected.
--

--
-- Determine the size of the window
--

-- determine desktop size
tell application "Finder"
	set size_screen to bounds of window of desktop
end tell

-- determine dock size
if (do shell script "defaults read com.apple.dock autohide") is equal to "0" then -- dock is not hidden
	-- NOTE: size of the dock is size of the icons + ~7 pixels
	set size_dock to ((do shell script "defaults read com.apple.dock tilesize") as number) + 7
else -- dock is hidden
	set size_dock to 0
end if

-- menubar size
set size_menubar to 22

-- label bounds array
set window_origin_x to 0
set window_origin_y to size_menubar
set window_width to (item 3 of size_screen)
set window_height to ((item 4 of size_screen) - size_dock)

-- put it all together
set size_window to {window_origin_x, window_origin_y, window_width, window_height}

--
-- Determine which window to open next
--

tell application "Safari"
	if windows is {} then -- there are no open windows
		make new document
		set bounds of window 1 to size_window
	else -- a window is available
		tell first window
			if miniaturized then -- set bounds to size_screen
				set miniaturized to false
				set bounds to size_window
			else -- open a new window
				tell application "Safari"
					activate
					make new document
					set bounds of window 1 to size_window
				end tell
			end if
		end tell
		activate
	end if
end tell

