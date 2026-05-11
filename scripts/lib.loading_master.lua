local loading = {} -- L0_1

loading.table = {}

function loading.create()

    loading.group = display.newGroup()
    loading.group.x = SW * 0.5
    loading.group.y = SH * 0.5

    local aspectRatio = SW / SH

    local bgWidth, bgHeight

    if aspectRatio < 2 then
        bgHeight = SH * 2
    else
        bgHeight = SH
    end

    bgWidth = SW

    local barHeight = SHK * 0.05

    -- Background
    loading.bg = display.newImage("image/background/1.jpg")
    loading.group:insert(loading.bg)

    loading.bg.width = bgWidth
    loading.bg.height = bgHeight
    loading.bg.anchorX = 1
    loading.bg.x = SW * 0.5

    -- Adds dark gradient strip
    loading.bgTop = display.newRoundedRect(
        loading.group,
        0,
        -SH * 0.5 + SHK * 0.125,
        SW - SHK * 0.2,
        SHK * 0.2,
        SHK * 0.0125
    )

    loading.bgTop:setFillColor(0, 0, 0, 0.5)
    
    -- Progress bar
    loading.progress.fill = {
        type = "gradient",
        color1 = {0.5, 0.125, 0.025},
        color2 = {1, 0.25, 0.05},
        direction = "up"
    }
    loading.progress.fill.effect = "filter.linearWipe"
    loading.progress.fill.effect.direction = {1, 0}
    loading.progress.fill.effect.smoothness = 0.001
    loading.progress.fill.effect.progress = 0

    -- Displays title 
    loading.title = display.newText({
        parent = loading.group,
        text = "Day R",
        width = SW * 0.8,
        font = "freemono",
        fontSize = SHK * 0.05,
        align = "center",
        x = 0,
        y = -SH * 0.5 + SHK * 0.125
    })
    loading.title:setFillColor(1, 1, 1)

    loading.systemText = display.newText({
        parent = loading.group,
        text = "",
        width = SW * 0.2,
        font = "freemono",
        fontSize = SHK * 0.025,
        align = "left",
        x = -SW * 0.5 + (SW * 0.2 * 0.5),
        y = SH * 0.5 - SHK * 0.016
    })

end

function loading.start()

    -- Load the list of loading tasks (VERY important)
    require("lib.loading_list")

    -- Ensure UI exists
    if not loading.group then
        loading.create()
    end

    -- Reset runtime state
    loading.num = 0
    loading.isComplete = true
    loading.isPause = false

    -- Start repeating update loop
    loading.timerStep = timer.performWithDelay(
        10,
        function()
            loading.step()
        end,
        0 -- infinite loop
    )
end

function loading.step()

    if not loading.group then
        if loading.timerStep then
            timer.cancel(loading.timerStep)
            loading.timerStep = nil
        end
        return
    end

    loading.group:toFront()

    if loading.isPause then
        return
    end

    -- If current task finished, move to next
    if loading.isComplete then

        if loading.num < #loading.table then
            loading.num = loading.num + 1

            local item = loading.table[loading.num]
            local name = item and item.name or ""

            loading.setProgress(loading.num / #loading.table)
            loading.setText(name)

            loading.isComplete = false

            -- Execute task action
            if item and item.action then
                item.action()
            end

            loading.isComplete = true

        else
            loading.finish()
        end
    end

    -- Random advice system (one-time trigger)
    if not loading.isAdvice then
        if strings and strings.advices and #strings.advices > 0 then

            loading.isAdvice = true

            local indices = {
                1,2,3,4,5,6,7,8,
                9,10,11,12,13,14,15,16
            }

            local i = indices[math.random(#indices)]
            local text = strings.advices[i] or "Day R"

            loading.setTitle(text)
        end
    end
end

function loading.finish()

    -- Stop update loop
    if loading.timerStep then
        timer.cancel(loading.timerStep)
        loading.timerStep = nil
    end

    if not loading.group then
        return
    end

    loading.isFinish = true

    -- Fade out all visual elements
    transition.to(loading.bg,        { time = 500, alpha = 0 })
    transition.to(loading.logo,      { time = 500, alpha = 0 })
    transition.to(loading.bgTop,     { time = 500, alpha = 0 })
    transition.to(loading.title,     { time = 500, alpha = 0 })
    transition.to(loading.text,      { time = 500, alpha = 0 })
    transition.to(loading.progress,  { time = 500, alpha = 0 })

    -- Destroy after delay
    timer.performWithDelay(1000, function()
        if loading.group then
            loading.group:removeSelf()
        end
        loading.group = nil
    end)
end