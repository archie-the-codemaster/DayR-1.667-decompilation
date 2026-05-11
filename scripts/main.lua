-- Version flag and premium apk check
local CURRENT_VERSION = 667
local PREMIUM_APK = false

-- Main game function
main = {}
WINDOWS = false
main.loadModules = not WINDOWS

-- Stops the phone from idling and fullscreens the app
system.setIdleTimer(false)
display.setStatusBar(display.HiddenStatusBar)
-- Prevents accidental swipes (IOS)
native.setProperty(preferredScreenEdgesDeferringSystemGestures, true)

-- Loads requirments (?)
-- Probably used for saved data/configs
json = require("json")
-- Buttons/sliders etc...
widget = require("widget")
-- Online AUTH, watch out for it
crypto = require("crypto")
-- UTF 8 plugin, useful for text
utf8 = require("plugin.utf8")

-- Probably used fot tables/consts
require("lib.constants")
require("lib.table2")

-- Math libs
math2 = require("lib.math2.math2")
geometry2 = require("lib.math2.geomtry2")

-- Most likely used to patch some bugs
require("lib.widget_library.widget_fix")

ksark = require("lib.ksakr")

converter = require("lib.converter")
-- Used for saves, filework, dirs, zips and others...
main.filework = require("lib.filework")

ANDROID.file = 
if ANDROID then 
    native.setProperty("androidSystemUiVisibility", "immersiveSticky")
end

main.loading = require("lib.loading_master")
main.loading:start()