hs.loadSpoon("AppWindowSwitcher")
    -- :setLogLevel("debug") -- uncomment for console debug log
    :bindHotkeys({
        [{"com.brave.Browser",
          "com.google.Chrome",
        }]     = {{"cmd", "alt"}, "7" },
        ["com.tinyspeck.slackmacgap"] = {{"cmd", "alt"}, "8" }
    })
hs.loadSpoon("Token")

-- Cmd-Alt-G - type Github token  
hs.hotkey.bind({"cmd", "alt"}, "G", function()
    spoon.Token.secret_key = ''
    spoon.Token:token_keystroke()
end)