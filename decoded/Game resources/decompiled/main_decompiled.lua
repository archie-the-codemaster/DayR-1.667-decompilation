local L0_1, L1_1, L2_1
L0_1 = 667
CURRENT_VERSION = L0_1
L0_1 = false
PREMIUM_APK = L0_1

L0_1 = {}
main = L0_1

L0_1 = false
WINDOWS = L0_1

L0_1 = main
L1_1 = WINDOWS
L1_1 = not L1_1
L0_1.loadModules = L1_1

L0_1 = system
L0_1 = L0_1.setIdleTimer
L1_1 = false
L0_1(L1_1)

L0_1 = display
L0_1 = L0_1.setStatusBar
L1_1 = display
L1_1 = L1_1.HiddenStatusBar
L0_1(L1_1)

L0_1 = native
L0_1 = L0_1.setProperty
L1_1 = "preferredScreenEdgesDeferringSystemGestures"
L2_1 = true
L0_1(L1_1, L2_1)

L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
json = L0_1

L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
widget = L0_1

L0_1 = require
L1_1 = "crypto"
L0_1 = L0_1(L1_1)
crypto = L0_1

L0_1 = require
L1_1 = "plugin.utf8"
L0_1 = L0_1(L1_1)
utf8 = L0_1

L0_1 = require
L1_1 = "lib.constants"
L0_1(L1_1)

L0_1 = require
L1_1 = "lib.table2"
L0_1(L1_1)

L0_1 = require
L1_1 = "lib.math2.math2"
L0_1 = L0_1(L1_1)

math2 = L0_1
L0_1 = require
L1_1 = "lib.math2.geometry2"
L0_1 = L0_1(L1_1)
geometry2 = L0_1

L0_1 = require
L1_1 = "lib.widget_library.widget_fix"
L0_1(L1_1)

L0_1 = require
L1_1 = "lib.ksark"
L0_1 = L0_1(L1_1)
ksark = L0_1

L0_1 = require
L1_1 = "lib.converter"
L0_1 = L0_1(L1_1)
converter = L0_1

L0_1 = main
L1_1 = require
L2_1 = "lib.filework"
L1_1 = L1_1(L2_1)

L0_1.file = L1_1
L0_1 = ANDROID
if L0_1 then
  L0_1 = native
  L0_1 = L0_1.setProperty
  L1_1 = "androidSystemUiVisibility"
  L2_1 = "immersiveSticky"
  L0_1(L1_1, L2_1)
end
L0_1 = main
L1_1 = require
L2_1 = "lib.loading_master"
L1_1 = L1_1(L2_1)
L0_1.loading = L1_1

L0_1 = main
L0_1 = L0_1.loading
L1_1 = L0_1
L0_1 = L0_1.start
L0_1(L1_1)
