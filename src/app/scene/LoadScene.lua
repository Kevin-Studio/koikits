
local LoadScene = class("LoadScene", cc.load("mvc").ViewBase)
local BaseView = require("sdk.ui.BaseView")

function LoadScene:onCreate()
	local layer = display.newLayer(cc.c4b(90, 90, 50, 255))
	self:addChild(layer)

	local node = BaseView.new()
end

return LoadScene
