--
-- Dock - move to bottom of screen
--

do shell script "defaults write com.apple.dock orientation bottom && killall -HUP Dock"

