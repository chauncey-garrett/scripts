--
-- Dock - move to right side of screen
--

do shell script "defaults write com.apple.dock orientation right && killall -HUP Dock"

