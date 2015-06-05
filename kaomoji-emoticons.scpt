--
-- Kaomoji emoticons
--   http://rocketink.net/2013/07/create-and-edit-lists-in-keyboard-maestro-with-applescript.html#kaomoji-emoticon-example
--

property kaoList : {"-_-;", "(^_^)", "<( '.' )>", "◕‿‿◕", "(♥‿♥)", "(ᵔᴥᵔ)", "ᶘ ᵒᴥᵒᶅ", "[•.•ิ]", "(•͡.•͡)", "(*_*)", "ಠ_ರೃ", "⊙﹏⊙", "٩(͡๏̯͡๏)۶", "٩(●̮̮̃•̃)۶", "ε-(´・｀) ﾌ", "-_-*", "(◐‿◑)﻿", "(•ˋ _ ˊ•)", "o┤*｀□´ *├o", "ヽ(｀⌒´メ)ノ", "(-̩__-̩)", "＼（＾ ＾）／", "＼(-_- )", "(>_<\")", "(´。＿。｀)", "(z_z~.)", "v(^_^)v", "o(^_^o)", "(″･ิ_･ิ)っ", "◕‿↼", "(=^.^=)/", "ƪ(˘▽˘ƪ)"}

tell application "Keyboard Maestro Engine"
    activate
    set selectedEmoji to choose from list the kaoList with title "Kaomoji" with prompt "Your Emoticon feels like…"

    if selectedEmoji is false then -- Cancel -> Play beep and cancel all running macros
	    beep 1
	    do script "Cancel All Macros"
	    error number -128
    else -- OK
	    return selectedEmoji
    end if
end tell

