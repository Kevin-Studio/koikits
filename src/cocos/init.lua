--[[--
	init.lua
]]
require "cocos.cocos2d.Cocos2d"
require "cocos.cocos2d.Cocos2dConstants"
require "cocos.cocos2d.functions"

__G__TRACKBACK__ = function(msg)
    local msg = debug.traceback(msg, 3)
    print(msg)
    return msg
end

-- audio
require "cocos.cocosdenshion.AudioEngine"
-- cocosstudio
if nil ~= ccs then
    require "cocos.cocostudio.CocoStudio"
end
-- ui
if nil ~= ccui then
    require "cocos.ui.GuiConstants"
end

-- extensions
require "cocos.extension.ExtensionConstants"

-- network
require "cocos.network.NetworkConstants"

-- Spine
if nil ~= sp then
    require "cocos.spine.SpineConstants"
end

-- Lua extensions
require "cocos.cocos2d.bitExtend"

-- physics3d
require "cocos.physics3d.physics3d-constants"

if CC_USE_FRAMEWORK then
    require "cocos.framework.init"
end
