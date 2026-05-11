 local L0_1, L1_1
L0_1 = {}
L1_1 = {}
L0_1.table = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1
  L2_2 = display 
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L1_2.group = L2_2
  L1_2 = L0_1
  L1_2 = L1_2.group
  L2_2 = SW
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L2_2 = SH
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
  L2_2 = SW
  L3_2 = SH
  L2_2 = L2_2 / L3_2
  if L2_2 < 2 then
    L2_2 = SH
    L2_2 = L2_2 * 2
    if L2_2 then
      goto lbl_24
    end
  end
  L2_2 = SW
  ::lbl_24::
  L3_2 = SW
  L4_2 = SH
  L3_2 = L3_2 / L4_2
  if L3_2 < 2 then
    L3_2 = SH
    if L3_2 then
      goto lbl_34
    end
  end
  L3_2 = SW
  L3_2 = L3_2 * 0.5
  ::lbl_34::
  L4_2 = SHK
  L4_2 = L4_2 * 0.05
  L5_2 = display
  L5_2 = L5_2.newImage
  L6_2 = "image/background/1.jpg" -- Background
  L5_2 = L5_2(L6_2)
  L1_2.bg = L5_2
  L6_2 = L1_2
  L5_2 = L1_2.insert
  L7_2 = L1_2.bg
  L5_2(L6_2, L7_2)
  L5_2 = L1_2.bg
  L5_2.width = L2_2
  L5_2 = L1_2.bg
  L5_2.height = L3_2
  L5_2 = L1_2.bg
  L5_2.anchorX = 1
  L5_2 = L1_2.bg
  L6_2 = SW
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = L1_2
  L7_2 = 0
  L8_2 = SH
  L8_2 = -L8_2
  L8_2 = L8_2 * 0.5
  L9_2 = SHK
  L9_2 = L9_2 * 0.125
  L8_2 = L8_2 + L9_2
  L9_2 = SW
  L10_2 = SHK
  L10_2 = L10_2 * 0.2
  L9_2 = L9_2 - L10_2
  L10_2 = SHK
  L10_2 = L10_2 * 0.2
  L11_2 = SHK
  L11_2 = L11_2 * 0.0125
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2.bgTop = L5_2
  L5_2 = L1_2.bgTop
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0.5
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = display
  L5_2 = L5_2.setDefault
  L6_2 = "textureWrapX"
  L7_2 = "repeat"
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L1_2
  L7_2 = 0
  L8_2 = SH
  L8_2 = L8_2 * 0.5
  L9_2 = L4_2 * 0.5
  L8_2 = L8_2 - L9_2
  L9_2 = SW
  L10_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = {}
  L6_2.type = "gradient"
  L7_2 = {}
  L8_2 = 0.5
  L9_2 = 0.125
  L10_2 = 0.025
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2.color1 = L7_2
  L7_2 = {}
  L8_2 = 1
  L9_2 = 0.25
  L10_2 = 0.05
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2.color2 = L7_2
  L6_2.direction = "up"
  L5_2.fill = L6_2
  L6_2 = L5_2.fill
  L6_2.effect = "filter.linearWipe"
  L6_2 = L5_2.fill
  L6_2 = L6_2.effect
  L7_2 = {}
  L8_2 = 1
  L9_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L6_2.direction = L7_2
  L6_2 = L5_2.fill
  L6_2 = L6_2.effect
  L6_2.smoothness = 0.001
  L6_2 = L5_2.fill
  L6_2 = L6_2.effect
  L6_2.progress = 0
  L1_2.progress = L5_2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = {}
  L7_2.parent = L1_2
  L7_2.text = "Day R"
  L8_2 = SW
  L8_2 = L8_2 * 0.8
  L7_2.width = L8_2
  L7_2.font = "freemono"
  L8_2 = SHK
  L8_2 = L8_2 * 0.05
  L7_2.fontSize = L8_2
  L7_2.align = "center"
  L8_2 = SH
  L8_2 = -L8_2
  L8_2 = L8_2 * 0.5
  L9_2 = SHK
  L9_2 = L9_2 * 0.125
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L6_2 = L6_2(L7_2)
  L1_2.title = L6_2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = {}
  L7_2.parent = L1_2
  L7_2.text = "80%"
  L8_2 = SW
  L8_2 = L8_2 * 0.8
  L7_2.width = L8_2
  L7_2.font = "freemono"
  L8_2 = L4_2 * 0.8
  L7_2.fontSize = L8_2
  L7_2.align = "center"
  L8_2 = SH
  L8_2 = L8_2 * 0.5
  L9_2 = L4_2 * 0.5
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  L6_2 = L6_2(L7_2)
  L1_2.text = L6_2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = {}
  L7_2.parent = L1_2
  L7_2.text = ""
  L8_2 = SW
  L8_2 = L8_2 * 0.2
  L7_2.width = L8_2
  L7_2.font = "freemono"
  L8_2 = SHK
  L8_2 = L8_2 * 0.025
  L7_2.fontSize = L8_2
  L7_2.align = "left"
  L8_2 = SW
  L8_2 = -L8_2
  L8_2 = L8_2 * 0.5
  L9_2 = SW
  L9_2 = L9_2 * 0.2
  L9_2 = L9_2 * 0.5
  L8_2 = L8_2 + L9_2
  L7_2.x = L8_2
  L8_2 = SH
  L8_2 = L8_2 * 0.5
  L9_2 = SHK
  L9_2 = L9_2 * 0.016
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  L6_2 = L6_2(L7_2)
  L1_2.systemText = L6_2
  L6_2 = L1_2.title
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L1_2.text
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
end

L0_1.create = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = require
  L2_2 = "lib.loading_list"
  L1_2(L2_2)
  L1_2 = L0_1
  L1_2 = L1_2.group
  if not L1_2 then
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.create
    L1_2(L2_2)
  end
  L1_2 = L0_1
  L1_2.num = 0
  L1_2 = L0_1
  L1_2.isComplete = true
  L1_2 = L0_1
  L2_2 = timer
  L2_2 = L2_2.performWithDelay
  L3_2 = 10
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L1_3 = L0_3
    L0_3 = L0_3.step
    L0_3(L1_3)
  end
  
  L5_2 = -1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.timerStep = L2_2
end

L0_1.start = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L1_2 = L1_2.timerStep
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L0_1
    L2_2 = L2_2.timerStep
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2.timerStep = nil
  end
  L1_2 = L0_1
  L1_2 = L1_2.group
  if not L1_2 then
    return
  end
  A0_2.isFinish = true
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L1_2.bg
  L4_2 = {}
  L4_2.time = 500
  L4_2.alpha = 0
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L1_2.logo
  L4_2 = {}
  L4_2.time = 500
  L4_2.alpha = 0
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L1_2.bgTop
  L4_2 = {}
  L4_2.time = 500
  L4_2.alpha = 0
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L1_2.title
  L4_2 = {}
  L4_2.time = 500
  L4_2.alpha = 0
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L1_2.text
  L4_2 = {}
  L4_2.time = 500
  L4_2.alpha = 0
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L1_2.progress
  L4_2 = {}
  L4_2.time = 500
  L4_2.alpha = 0
  L2_2(L3_2, L4_2)
  L2_2 = timer
  L2_2 = L2_2.performWithDelay
  L3_2 = 1000
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.group
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.group
      L0_3 = L0_3.removeSelf
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.group
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
      end
    end
    L0_3 = L0_1
    L0_3.group = nil
  end
  
  L2_2(L3_2, L4_2)
end

L0_1.finish = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.isFinish
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.checkFinish = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = L0_1
  L1_2 = L1_2.group
  if not L1_2 then
    L2_2 = L0_1
    L2_2 = L2_2.timerStep
    if L2_2 then
      L2_2 = timer
      L2_2 = L2_2.cancel
      L3_2 = L0_1
      L3_2 = L3_2.timerStep
      L2_2(L3_2)
      L2_2 = L0_1
      L2_2.timerStep = nil
    end
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2.num
  L4_2 = L1_2
  L3_2 = L1_2.toFront
  L3_2(L4_2)
  L3_2 = L0_1
  L3_2 = L3_2.isPause
  if L3_2 then
    return
  else
    L3_2 = L0_1
    L3_2 = L3_2.isComplete
    if L3_2 then
      L3_2 = L0_1
      L3_2 = L3_2.table
      L3_2 = #L3_2
      if L2_2 < L3_2 then
        L2_2 = L2_2 + 1
        L3_2 = L0_1
        L3_2.num = L2_2
        L3_2 = L0_1
        L3_2 = L3_2.table
        L3_2 = L3_2[L2_2]
        if L3_2 then
          L4_2 = L3_2.name
          if L4_2 then
            goto lbl_48
          end
        end
        L4_2 = ""
        ::lbl_48::
        L5_2 = L0_1
        L6_2 = L5_2
        L5_2 = L5_2.setProgress
        L7_2 = L0_1
        L7_2 = L7_2.table
        L7_2 = #L7_2
        L7_2 = L2_2 / L7_2
        L5_2(L6_2, L7_2)
        L5_2 = L0_1
        L6_2 = L5_2
        L5_2 = L5_2.setText
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        L5_2 = L0_1
        L5_2.isComplete = false
        if L3_2 then
          L5_2 = L3_2.action
          if L5_2 then
            L5_2 = L3_2.action
            L5_2()
          end
        end
        L6_2 = L1_2
        L5_2 = L1_2.toFront
        L5_2(L6_2)
        L5_2 = L0_1
        L5_2.isComplete = true
    end
    else
      L3_2 = L0_1
      L3_2 = L3_2.isComplete
      if L3_2 then
        L3_2 = L0_1
        L3_2 = L3_2.table
        L3_2 = #L3_2
        if L2_2 >= L3_2 then
          L3_2 = L0_1
          L4_2 = L3_2
          L3_2 = L3_2.finish
          L3_2(L4_2)
        end
      end
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2.isAdvice
  if not L3_2 then
    L3_2 = strings
    L3_2 = L3_2.advices
    if L3_2 then
      L3_2 = strings
      L3_2 = L3_2.advices
      L3_2 = #L3_2
      if 0 < L3_2 then
        L3_2 = L0_1
        L3_2.isAdvice = true
        L3_2 = {}
        L4_2 = 1
        L5_2 = 2
        L6_2 = 3
        L7_2 = 4
        L8_2 = 5
        L9_2 = 6
        L10_2 = 7
        L11_2 = 8
        L12_2 = 9
        L13_2 = 10
        L14_2 = 11
        L15_2 = 12
        L16_2 = 13
        L17_2 = 14
        L18_2 = 15
        L19_2 = 16
        L3_2[1] = L4_2
        L3_2[2] = L5_2
        L3_2[3] = L6_2
        L3_2[4] = L7_2
        L3_2[5] = L8_2
        L3_2[6] = L9_2
        L3_2[7] = L10_2
        L3_2[8] = L11_2
        L3_2[9] = L12_2
        L3_2[10] = L13_2
        L3_2[11] = L14_2
        L3_2[12] = L15_2
        L3_2[13] = L16_2
        L3_2[14] = L17_2
        L3_2[15] = L18_2
        L3_2[16] = L19_2
        L4_2 = math
        L4_2 = L4_2.random
        L5_2 = #L3_2
        L4_2 = L4_2(L5_2)
        L4_2 = L3_2[L4_2]
        L5_2 = strings
        L5_2 = L5_2.advices
        L5_2 = L5_2[L4_2]
        if not L5_2 then
          L5_2 = "Day R"
        end
        L6_2 = L0_1
        L7_2 = L6_2
        L6_2 = L6_2.setTitle
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end

L0_1.step = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2 = L1_2.isPause
  return L1_2
end

L0_1.getPause = L1_1

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  L2_2.isPause = A1_2
end

L0_1.setPause = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L2_2 = L2_2.group
  L3_2 = L2_2.progress
  L3_2 = L3_2.fill
  L3_2 = L3_2.effect
  L3_2.progress = A1_2
end

L0_1.setProgress = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L2_2 = L2_2.group
  if L2_2 then
    L3_2 = L2_2.title
    if L3_2 then
      L3_2 = L2_2.title
      L3_2.text = A1_2
    end
  end
end

L0_1.setTitle = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1
  L2_2 = L2_2.group
  if L2_2 then
    L3_2 = L2_2.text
    if L3_2 then
      L3_2 = L2_2.text
      L3_2.text = A1_2
    end
  end
  if L2_2 then
    L3_2 = L2_2.systemText
    if L3_2 then
      L3_2 = "v."
      L4_2 = CURRENT_VERSION
      L5_2 = " - "
      L6_2 = PREMIUM_APK
      if L6_2 then
        L6_2 = "p"
        if L6_2 then
          goto lbl_31
        end
      end
      L6_2 = PREMIUM
      if L6_2 then
        L6_2 = "pf"
        if L6_2 then
          goto lbl_31
        end
      end
      L6_2 = "f"
      ::lbl_31::
      L7_2 = ANDROID
      if L7_2 then
        L7_2 = "a "
        if L7_2 then
          goto lbl_44
        end
      end
      L7_2 = IOS
      if L7_2 then
        L7_2 = "i "
        if L7_2 then
          goto lbl_44
        end
      end
      L7_2 = "o "
      ::lbl_44::
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
      L4_2 = 0
      L5_2 = main
      L5_2 = L5_2.multiplayer
      if L5_2 then
        L5_2 = main
        L5_2 = L5_2.multiplayer
        L5_2 = L5_2.hero
        if L5_2 then
          L5_2 = main
          L5_2 = L5_2.multiplayer
          L5_2 = L5_2.hero
          L6_2 = L5_2
          L5_2 = L5_2.getUserId
          L5_2 = L5_2(L6_2)
          L4_2 = L5_2 or L4_2
          if not L5_2 then
          end
        end
      end
      L5_2 = L3_2
      L6_2 = " u="
      L7_2 = math2
      L8_2 = L7_2
      L7_2 = L7_2.numToCode
      L9_2 = L4_2
      L7_2 = L7_2(L8_2, L9_2)
      L3_2 = L5_2 .. L6_2 .. L7_2
      L5_2 = L2_2.systemText
      L5_2.text = L3_2
    end
  end
end

L0_1.setText = L1_1
return L0_1
