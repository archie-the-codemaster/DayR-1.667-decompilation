local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = main
L0_1 = L0_1.loading
L1_1 = L0_1.table
L2_1 = {}
L3_1 = {}
L2_1.loading = L3_1
strings = L2_1
L2_1 = nil
L3_1 = {}
L3_1.name = "1%"

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = "class"
  L2_2 = "class_story"
  L3_2 = "class_graphic"
  L4_2 = "music"
  L5_2 = "sound"
  L6_2 = "profile"
  L7_2 = "setting"
  L8_2 = "cache"
  L9_2 = "facebook"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = main
    L7_2 = require
    L8_2 = "lib."
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2(L8_2)
    L6_2[L5_2] = L7_2
  end
end

L3_1.action = L4_1
L1_1[1] = L3_1
L3_1 = {}
L3_1.name = "3%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.lua_work"
  L1_2 = L1_2(L2_2)
  L0_2.lua = L1_2 -- main.lua = require("lib.lua_work")
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.multiplayer.server"
  L1_2 = L1_2(L2_2)
  L0_2.server = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.multiplayer.moderator"
  L1_2 = L1_2(L2_2)
  L0_2.moderator = L1_2
  L0_2 = require
  L1_2 = "lib.multiplayer.initializer"
  L0_2(L1_2)
  L0_2 = main
  L1_2 = MultiplayerInitializer
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L0_2.multiplayer = L1_2
  L0_2 = main
  L1_2 = main
  L1_2 = L1_2.multiplayer
  L1_2 = L1_2.masterServer
  L0_2.masterServer = L1_2
  L0_2 = main
  L0_2 = L0_2.file
  L1_2 = L0_2
  L0_2 = L0_2.verifyFolders
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.setting
  L1_2 = L0_2
  L0_2 = L0_2.continue
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.setting
  L1_2 = L0_2
  L0_2 = L0_2.initModule
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[2] = L3_1
L3_1 = {}
L3_1.name = "5%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.language_strings.language_master"
  L1_2 = L1_2(L2_2)
  L0_2.language = L1_2
end

L3_1.action = L4_1
L1_1[3] = L3_1
L3_1 = {}
L3_1.name = "9%"

function L4_1()
  local L0_2, L1_2
  L0_2 = main
  L1_2 = {}
  L0_2.npc_dialogs_list = L1_2
  L0_2 = main
  L0_2 = L0_2.language
  L1_2 = L0_2
  L0_2 = L0_2.load
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[4] = L3_1
L3_1 = {}
L3_1.name = "12%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L0_2 = L0_2.loadModules
  if L0_2 then
    L0_2 = main
    L1_2 = require
    L2_2 = "lib.ad_admob"
    L1_2 = L1_2(L2_2)
    L0_2.ad = L1_2
  end
end

L3_1.action = L4_1
L1_1[5] = L3_1
L3_1 = {}
L3_1.name = "15%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.interface.color"
  L1_2 = L1_2(L2_2)
  L0_2.color = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.itemlist"
  L1_2 = L1_2(L2_2)
  L0_2.itemlist = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.hard_table"
  L1_2 = L1_2(L2_2)
  L0_2.hard = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.character"
  L1_2 = L1_2(L2_2)
  L0_2.character = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.tile"
  L1_2 = L1_2(L2_2)
  L0_2.tile = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.biome_master"
  L1_2 = L1_2(L2_2)
  L0_2.biome = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.level.level_master"
  L1_2 = L1_2(L2_2)
  L0_2.level = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.cooking"
  L1_2 = L1_2(L2_2)
  L0_2.cooking = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.map"
  L1_2 = L1_2(L2_2)
  L0_2.map = L1_2
  L0_2 = main
  L0_2 = L0_2.map
  L1_2 = require
  L2_2 = "lib.map_global"
  L1_2 = L1_2(L2_2)
  L0_2.global = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.miniloc.miniloc_logic"
  L1_2 = L1_2(L2_2)
  L0_2.miniloc = L1_2
  L0_2 = main
  L0_2 = L0_2.tile
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.biome
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[6] = L3_1
L3_1 = {}
L3_1.name = "20%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.quest"
  L1_2 = L1_2(L2_2)
  L0_2.quest = L1_2
  L0_2 = main
  L0_2 = L0_2.quest
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.language
  L1_2 = L0_2
  L0_2 = L0_2.loadNpc
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.language
  L1_2 = L0_2
  L0_2 = L0_2.loadStory
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[7] = L3_1
L3_1 = {}
L3_1.name = "25%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.daily_quest.daily_quest"
  L1_2 = L1_2(L2_2)
  L0_2.dailyQuest = L1_2
  L0_2 = main
  L0_2 = L0_2.dailyQuest
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[8] = L3_1
L3_1 = {}
L3_1.name = "27%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.multitouch"
  L1_2 = L1_2(L2_2)
  L0_2.multitouch = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.profile"
  L1_2 = L1_2(L2_2)
  L0_2.profile = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.calculate"
  L1_2 = L1_2(L2_2)
  L0_2.calculate = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.inventory"
  L1_2 = L1_2(L2_2)
  L0_2.inventory = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.weather"
  L1_2 = L1_2(L2_2)
  L0_2.weather = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.random_event"
  L1_2 = L1_2(L2_2)
  L0_2.randomEvent = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.search_biome_master"
  L1_2 = L1_2(L2_2)
  L0_2.searchBiome = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.search_area"
  L1_2 = L1_2(L2_2)
  L0_2.searchArea = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.battle.battle_master"
  L1_2 = L1_2(L2_2)
  L0_2.battle = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.disease"
  L1_2 = L1_2(L2_2)
  L0_2.disease = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.story"
  L1_2 = L1_2(L2_2)
  L0_2.story = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.game"
  L1_2 = L1_2(L2_2)
  L0_2.game = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.daily_reward"
  L1_2 = L1_2(L2_2)
  L0_2.dailyReward = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.ad_tv"
  L1_2 = L1_2(L2_2)
  L0_2.adTv = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.version_switch"
  L1_2 = L1_2(L2_2)
  L0_2.versionSwitch = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.craft"
  L1_2 = L1_2(L2_2)
  L0_2.craft = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.gather_resource"
  L1_2 = L1_2(L2_2)
  L0_2.gatherResource = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.craft_master"
  L1_2 = L1_2(L2_2)
  L0_2.craftMaster = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.animation"
  L1_2 = L1_2(L2_2)
  L0_2.animation = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.equipment"
  L1_2 = L1_2(L2_2)
  L0_2.equipment = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.halloween"
  L1_2 = L1_2(L2_2)
  L0_2.halloween = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.ally.ally_master"
  L1_2 = L1_2(L2_2)
  L0_2.ally = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.advice_master"
  L1_2 = L1_2(L2_2)
  L0_2.advice = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.graphic"
  L1_2 = L1_2(L2_2)
  L0_2.graphic = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.interface.image_sheet"
  L1_2 = L1_2(L2_2)
  L0_2.imageSheet = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.interface.texture"
  L1_2 = L1_2(L2_2)
  L0_2.texture = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.interface.images"
  L1_2 = L1_2(L2_2)
  L0_2.images = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.interface.obj"
  L1_2 = L1_2(L2_2)
  L0_2.obj = L1_2
  L0_2 = require
  L1_2 = "lib.interface.filter"
  L0_2(L1_2)
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.interface.ui_logic"
  L1_2 = L1_2(L2_2)
  L0_2.interface = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.screen_effect"
  L1_2 = L1_2(L2_2)
  L0_2.screenEffect = L1_2
end

L3_1.action = L4_1
L1_1[9] = L3_1
L3_1 = {}
L3_1.name = "33%"

function L4_1()
  local L0_2, L1_2
  L0_2 = main
  L0_2 = L0_2.music
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.sound
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.imageSheet
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.texture
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.interface
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.animation
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.graphic
  L1_2 = L0_2
  L0_2 = L0_2.create
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.masterServer
  L0_2 = L0_2.saves
  L1_2 = L0_2
  L0_2 = L0_2.init
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[10] = L3_1
L3_1 = {}
L3_1.name = "35%"

function L4_1()
  local L0_2, L1_2
  L0_2 = main
  L0_2 = L0_2.biome
  L1_2 = L0_2
  L0_2 = L0_2.loadFromZip
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.itemlist
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.itemlist
  L0_2 = L0_2.tag
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.itemlist
  L0_2 = L0_2.event
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.weather
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.level
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.ally
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.disease
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.story
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.randomEvent
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.searchBiome
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.searchArea
  L0_2 = L0_2.lock
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.battle
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.advice
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.adTv
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[11] = L3_1
L3_1 = {}
L3_1.name = "40%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = initAll
  L2_2 = "lib.inapp"
  L1_2 = L1_2(L2_2)
  L0_2.inapp = L1_2
  L0_2 = main
  L1_2 = initAll
  L2_2 = "lib.shop_master"
  L1_2 = L1_2(L2_2)
  L0_2.shop = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.offer.offer_master"
  L1_2 = L1_2(L2_2)
  L0_2.offer = L1_2
  L0_2 = main
  L0_2 = L0_2.shop
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.offer
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.inapp
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[12] = L3_1
L3_1 = {}
L3_1.name = "50%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.tutorial"
  L1_2 = L1_2(L2_2)
  L0_2.tutorial = L1_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.cutscene"
  L1_2 = L1_2(L2_2)
  L0_2.cutscene = L1_2
end

L3_1.action = L4_1
L1_1[13] = L3_1
L3_1 = {}
L3_1.name = "55%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L1_2 = require
  L2_2 = "lib.dialogs.npc_master"
  L1_2 = L1_2(L2_2)
  L0_2.npc = L1_2
  L0_2 = main
  L0_2 = L0_2.npc
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.miniloc
  L1_2 = L0_2
  L0_2 = L0_2.initAll
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[14] = L3_1
L3_1 = {}
L3_1.name = "60%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L0_2 = L0_2.profile
  L1_2 = L0_2
  L0_2 = L0_2.continue
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.loadModules
  if L0_2 then
    L0_2 = L0_1
    L1_2 = L0_2
    L0_2 = L0_2.setPause
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = main
    L1_2 = require
    L2_2 = "lib.gameNetwork"
    L1_2 = L1_2(L2_2)
    L0_2.gameNetwork = L1_2
    L0_2 = main
    L0_2 = L0_2.gameNetwork
    L0_2 = L0_2.init
    L0_2()
  end
end

L3_1.action = L4_1
L1_1[15] = L3_1
L3_1 = {}
L3_1.name = "65%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.setPause
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = MasterServerController
  L0_2 = L0_2.Instance
  L1_2 = L0_2
  L0_2 = L0_2.getSettings
  L0_2(L1_2)
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = 1000
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L1_3 = L0_3
    L0_3 = L0_3.setPause
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  
  L0_2(L1_2, L2_2)
end

L3_1.action = L4_1
L1_1[16] = L3_1
L3_1 = {}
L3_1.name = "70%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.setPause
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = main
  L0_2 = L0_2.multiplayer
  L0_2 = L0_2.masterServer
  L0_2 = L0_2.saves
  L1_2 = L0_2
  L0_2 = L0_2.silenceAuth
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L1_3 = L0_3
    L0_3 = L0_3.setPause
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  
  L0_2(L1_2, L2_2)
end

L3_1.action = L4_1
L1_1[17] = L3_1
L3_1 = {}
L3_1.name = "75%"

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TEST_BUILD
  if not L0_2 then
    L0_2 = main
    L0_2 = L0_2.server
    L1_2 = L0_2
    L0_2 = L0_2.syncData
    L2_2 = {}
    
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = main
      L1_3 = L1_3.server
      L2_3 = L1_3
      L1_3 = L1_3.edit
      L3_3 = "isDissonance"
      L4_3 = A0_3.isDissonance
      L1_3(L2_3, L3_3, L4_3)
    end
    
    L2_2.callback = L3_2
    L0_2(L1_2, L2_2)
  end
end

L3_1.action = L4_1
L1_1[18] = L3_1
L3_1 = {}
L3_1.name = "80%"

function L4_1()
  local L0_2, L1_2
end

L3_1.action = L4_1
L1_1[19] = L3_1
L3_1 = {}
L3_1.name = "85%"

function L4_1()
  local L0_2, L1_2
  L0_2 = main
  L0_2 = L0_2.profile
  L1_2 = L0_2
  L0_2 = L0_2.update
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.game
  L1_2 = L0_2
  L0_2 = L0_2.load
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[20] = L3_1
L3_1 = {}
L3_1.name = "90%"

function L4_1()
  local L0_2, L1_2
  L0_2 = main
  L0_2 = L0_2.loadModules
  if L0_2 then
    L0_2 = main
    L0_2 = L0_2.inapp
    L1_2 = L0_2
    L0_2 = L0_2.verifyProducts
    L0_2(L1_2)
  end
end

L3_1.action = L4_1
L1_1[21] = L3_1
L3_1 = {}
L3_1.name = "91%"

function L4_1()
  local L0_2, L1_2
  L0_2 = main
  L0_2 = L0_2.loadModules
  if L0_2 then
    L0_2 = main
    L0_2 = L0_2.inapp
    L1_2 = L0_2
    L0_2 = L0_2.restoreProducts
    L0_2(L1_2)
  end
end

L3_1.action = L4_1
L1_1[22] = L3_1
L3_1 = {}
L3_1.name = "95%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L0_2 = L0_2.ad
  if L0_2 then
    L0_2 = main
    L0_2 = L0_2.ad
    L0_2 = L0_2.init
    L0_2()
    L0_2 = L0_1
    L1_2 = L0_2
    L0_2 = L0_2.setPause
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = timer
    L0_2 = L0_2.performWithDelay
    L1_2 = 1000
    
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = L0_1
      L1_3 = L0_3
      L0_3 = L0_3.setPause
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    
    L0_2(L1_2, L2_2)
  end
end

L3_1.action = L4_1
L1_1[23] = L3_1
L3_1 = {}
L3_1.name = "96%"

function L4_1()
  local L0_2, L1_2
  L0_2 = main
  L0_2 = L0_2.ad
  if L0_2 then
    L0_2 = main
    L0_2 = L0_2.ad
    L0_2 = L0_2.verifyLoad
    L0_2()
  end
end

L3_1.action = L4_1
L1_1[24] = L3_1
L3_1 = {}
L3_1.name = "97%"

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = main
  L0_2 = L0_2.server
  L1_2 = L0_2
  L0_2 = L0_2.get
  L2_2 = "isDissonance"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = main
    L0_2 = L0_2.game
    L1_2 = L0_2
    L0_2 = L0_2.checkHacking
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = main
      L0_2 = L0_2.character
      L1_2 = L0_2
      L0_2 = L0_2.get
      L2_2 = "online"
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_39
      end
      L0_2 = main
      L0_2 = L0_2.game
      L1_2 = L0_2
      L0_2 = L0_2.checkAccessOnline
      L0_2 = L0_2(L1_2)
      if L0_2 then
        goto lbl_39
      end
    end
  end
  L0_2 = main
  L0_2 = L0_2.server
  L1_2 = L0_2
  L0_2 = L0_2.edit
  L2_2 = "isDissonance"
  L3_2 = nil
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = main
  L0_2 = L0_2.interface
  L1_2 = L0_2
  L0_2 = L0_2.open
  L2_2 = "main_menu"
  L0_2(L1_2, L2_2)
  goto lbl_69
  ::lbl_39::
  L0_2 = main
  L0_2 = L0_2.game
  L1_2 = L0_2
  L0_2 = L0_2.check
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = main
    L0_2 = L0_2.game
    L1_2 = L0_2
    L0_2 = L0_2.start
    L0_2(L1_2)
  else
    L0_2 = main
    L0_2 = L0_2.game
    L1_2 = L0_2
    L0_2 = L0_2.checkAll
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = main
      L0_2 = L0_2.game
      L1_2 = L0_2
      L0_2 = L0_2.start
      L2_2 = {}
      L2_2.isNew = true
      L2_2.isFirst = true
      L0_2(L1_2, L2_2)
    else
      L0_2 = main
      L0_2 = L0_2.interface
      L1_2 = L0_2
      L0_2 = L0_2.open
      L2_2 = "main_menu"
      L0_2(L1_2, L2_2)
    end
  end
  ::lbl_69::
  L0_2 = main
  L0_2 = L0_2.profile
  L1_2 = L0_2
  L0_2 = L0_2.versionSwitch
  L0_2(L1_2)
end

L3_1.action = L4_1
L1_1[25] = L3_1
L3_1 = {}
L3_1.name = "98%"

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = main
  L0_2 = L0_2.music
  L1_2 = L0_2
  L0_2 = L0_2.start
  L0_2(L1_2)
  L0_2 = main
  L0_2 = L0_2.loadModules
  if L0_2 then
    L0_2 = main
    L1_2 = require
    L2_2 = "lib.notifications"
    L1_2 = L1_2(L2_2)
    L0_2.notifications = L1_2
    L0_2 = main
    L0_2 = L0_2.notifications
    L1_2 = L0_2
    L0_2 = L0_2.initAll
    L0_2(L1_2)
  end
end

L3_1.action = L4_1
L1_1[27] = L3_1
L3_1 = {}
L3_1.name = "99%"

function L4_1()
  local L0_2, L1_2
end

L3_1.action = L4_1
L1_1[28] = L3_1
return L0_1
