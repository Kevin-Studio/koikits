
-- 调试模式级别
DEBUG = 2

-- 是否使用框架接口
CC_USE_FRAMEWORK = true

-- 是否显示帧率
CC_SHOW_FPS = true

-- 是否禁止随意创建全局变量
CC_DISABLE_GLOBAL = true

-- 显示适配
CC_DESIGN_RESOLUTION = {
    width = 1280,
    height = 720,
    autoscale = "FIXED_HEIGHT",
    callback = function(framesize)
        local ratio = framesize.width / framesize.height
        if ratio <= 1.34 then
            -- iPad 768*1024(1536*2048) is 4:3 screen
            return {autoscale = "FIXED_WIDTH"}
        end
    end
}
