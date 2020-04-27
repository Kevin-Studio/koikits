--[[--
	KKView.lua

	基础视图组件
]]
local KKView = class("KKView")

--------------------------------------------------------
-- 私有函数定义
--------------------------------------------------------
local _sendCrashLog

--[[--
	构造函数
	@param params 构造参数列表
	@return none
]]
function KKView:ctor(params)
	self.node_ = cc.Node:create()

	-- 设置透明度和颜色的透传
	self.node_:setCascadeOpacityEnabled(true)
    self.node_:setCascadeColorEnabled(true)

    -- 设置视图尺寸
	self.viewSize_ = cc.size(0, 0)

	-- 设置事件侦听
	self.onClickListener_       = nil  -- 点击事件
    self.onStateChangeListener_ = nil  -- 状态切换
    self.onEnterListener__      = nil  -- 节点进入
    self.onExitListener__       = nil  -- 节点退出

    -- 设置状态
    self.bEnable_               = true
    self.bTouchEnable_          = false
    self.bFocus_                = false
    self.state_                 = self.NORMAL
    self.bTouchedIn_            = false
    self.id_                    = 0
    self.refCount__             = 0
    self.parent_                = nil
    self.bTouchIn_              = false
    self.name__                 = "unknown"

    -- 根据参数设定属性
    if params then
        assert(type(params) == "table", "invalid params")

        if params.viewSize then
            self:setKKViewSize(params.viewSize.width, params.viewSize.height)
        end

        if params.background then
            self:setBackground(params.background)
        end

        if params.clickSound then
            self.sound_ = params.clickSound
        end

        if params.id then
            self:setId(params.id)
        end

        if params.name then
            self:setName(params.name)
        end

        if params.opacity then
            self:setOpacity(params.opacity)
        end

        if params.ZOrder then
            self:setZOrder(params.ZOrder)
        end

        if params.rotation then
            self:setRotation(params.rotation)
        end

        if params.positionX and params.positionY then
            self:setPosition(params.positionX, params.positionY)
        end

        if params.anchorPoint then
            self:setAnchorPoint(params.anchorPoint)
        end

        if params.visible ~=nil then
            self:setVisible(params.visible)
        end

        if params.bTouchEnable ~=nil then
            self:setTouchEnable(params.bTouchEnable)
        end
    end

    -- 取消节点的锚点设置效果
    self.node_:setIgnoreAnchorPointForPosition(false)

    -- 设置节点事件
    -- TODO: lua绑定时未能支持函数回调的绑定
    -- self.node_:setOnEnterCallback(function()
    --     self:onEnter()
    -- end)

    -- self.node_:setOnExitCallback(function()
    --     self:onExit()
    -- end)
end

--------------------------------------------------------
-- 生命周期相关函数
--------------------------------------------------------
--[[--
    判断C++ Node是否已经被销毁了
    这里借用是否Running状态判断，非running下不能Enter，Exit，update
    @return boolean
]]
function KKView:isDestoryed()
    return (not self.node_:isRunning())
end

--[[--
    view被添加进父节点时会被调用
    只有父节点时running状态时才会被调用，简单说就是父节点也已经被添加如了它的父节点上
    @return none
]]
function KKView:onEnter()
    if self.onEnterListener__ then
        self.onEnterListener__(self)
    end
end

--[[--
    当view从父节点移除时被调用
    @return none
]]
function KKView:onExit()
    if self:isDestoryed() then
        _sendCrashLog(self)
        return
    end

    if self.onExitListener__ then
        self.onExitListener__(self)
    end
end

--[[--
    返回view的节点对象
    @return 返回view的节点对象
]]
function KKView:getNode()
    if self:isDestoryed() then
        _sendCrashLog(self)
        return
    end

    return self.node_
end

--[[--
    从父节点上移除当前节点
    @param bCleanup 类型：boolean，是否清理掉节点，可选参数，缺省时true
    @return none
]]
function KKView:removeSelf(bCleanup)
    if self:isDestoryed() then
        _sendCrashLog(self)
        return
    end

    local parent = self:getParentKKView()
    local cleanup  = true

    if bCleanup ~= nil and bCleanup == false then
        cleanup = false
    end

    if parent then
        parent:removeKKView(self, cleanup)
        self.parent_ = nil
    else
        self.node_:removeFromParentAndCleanup(cleanup)
    end
end

--------------------------------------------------------
-- 节点基础属性函数（setter 和 getter）
--------------------------------------------------------
--[[--
    开启或关闭区域裁剪功能
    @param bEnable: boolean 是否开启
    @return none
]]
function KKView:setEnableScissor(bEnable)
    if self:isDestoryed() then
        _sendCrashLog(self)
        return
    end

    self.node_:setEnableScissor(bEnable)
end

--[[--
    裁剪功能是否开启
    @return boolean
]]
function KKView:isEnableScissor()
    if self:isDestoryed() then
        _sendCrashLog(self)
        return
    end

    return self.node_:isEnableScissor()
end

--------------------------------------------------------
-- 私有函数实现
--------------------------------------------------------
--[[
	发送崩溃日志
	@return none
]]
function _sendCrashLog(self)

end

return KKView