--
-- Dock - move to left side of screen
--

do shell script "defaults write com.apple.dock orientation left && killall -HUP Dock"

