## Node
----

- 基础类
  - `create`
  - `new`
  - `init`
  - `cleanup`
  - `visit`
  - `pause`
  - `resume`
  - `draw`
  - `update`
  - `isRunning`

- 公共接口
  - `setName`
  - `getName`
  - `setTag`
  - `getTag`
  - `getDescription`
  - `getScene`
  - `getContentSize`
  - `getBoundingBox`

- 事件侦听
  - `setOnEnterCallback` 设置onEnter事件侦听函数，_[TODO，目前lua版本里没有实现，需要修改以作支持。]_
  - `setOnExitCallback` 设置onExit事件侦听函数，_[TODO，目前lua版本里没有实现，需要修改以作支持。]_
  - `setOnEnterTransitionDidFinishCallback` 设置onEnterTransitionDidFinish事件侦听函数，_[TODO，目前lua版本里没有实现，需要修改以作支持。]_
  - `getOnEnterTransitionDidFinishCallback` 获取onEnterTransitionDidFinish事件侦听函数。
  - `setOnExitTransitionDidStartCallback`
  - `getOnExitTransitionDidStartCallback`
  - `setEventDispatcher`
  - `getEventDispatcher`
  - `setScheduler`
  - `getScheduler`
  - `isScheduled`

- 节点关系
  - `addChild`
  - `removeChild`
  - `getChildren`
  - `removeAllChildren`
  - `getChildrenCount`
  - `getChildByName`
  - `removeChildByName`
  - `getChildByTag`
  - `removeChildByTag`
  - `reorderChild`
  - `sortAllChildren`
  - `setParent`
  - `getParent`
  - `removeFromParent`
  - `setIgnoreAnchorPointForPosition`
  - `isIgnoreAnchorPointForPosition`
  - `setCascadeOpacityEnabled`
  - `isCascadeOpacityEnabled`
  - `setCascadeColorEnabled`
  - `isCascadeColorEnabled`

- 组件控制
  - `addComponent`
  - `getComponent`
  - `removeComponent`
  - `removeAllComponents`
  - `getAttachedNodeCount`
  - `setPhysicsBody`
  - `getPhysicsBody`
  - `setCameraMask`
  - `getCameraMask`
  - `setProgramState`
  - `getProgramState`
  - `setUserObject`

- 显示属性（矩阵）
  - `setPositionX`
  - `getPositionX`
  - `setPositionY`
  - `getPositionY`
  - `setPositionZ`
  - `getPositionZ`
  - `setPosition`
  - `setPosition3D`
  - `getPosition3D`
  - `setRotation`
  - `getRotation`
  - `setRotation3D`
  - `getRotation3D`
  - `setScaleX`
  - `getScaleX`
  - `setScaleY`
  - `getScaleY`
  - `setScaleZ`
  - `getScaleZ`
  - `setScale`
  - `getScale`

- 显示属性（相对）
  - `getAnchorPoint`
  - `getAnchorPointInPoints`
  - `setGlobalZOrder`
  - `getGlobalZOrder`
  - `_setLocalZOrder`
  - `setLocalZOrder`
  - `getLocalZOrder`
  - `updateOrderOfArrival`

- 显示属性（绘制）
  - `setSkewX`
  - `getSkewX`
  - `setSkewY`
  - `getSkewY`
  - `setRotationSkewX`
  - `getRotationSkewX`
  - `setRotationSkewY`
  - `getRotationSkewY`
  - `setOpacity`
  - `getOpacity`
  - `getDisplayedOpacity`
  - `setOpacityModifyRGB`
  - `isOpacityModifyRGB`
  - `updateDisplayedOpacity`
  - `setVisible`
  - `isVisible`
  - `setColor`
  - `getColor`
  - `getDisplayedColor`
  - `updateDisplayedColor`

- 坐标转换
  - `updateTransform`
  - `convertToWorldSpace`
  - `convertToWorldSpaceAR`
  - `getNodeToWorldTransform`
  - `getNodeToWorldAffineTransform`
  - `getWorldToNodeTransform`
  - `getWorldToNodeAffineTransform`
  - `setNodeToParentTransform`
  - `getNodeToParentTransform`
  - `getNodeToParentAffineTransform`
  - `getParentToNodeTransform`
  - `getParentToNodeAffineTransform`
  - `convertToNodeSpace`
  - `convertToNodeSpaceAR`
  - `convertTouchToNodeSpace`
  - `convertTouchToNodeSpaceAR`
  - `setNormalizedPosition`
  - `getNormalizedPosition`
  - `setPositionNormalized`
  - `getPositionNormalized`

- 动作管理
  - `setActionManager`
  - `getActionManager`
  - `getActionByTag`
  - `runAction`
  - `stopAction`
  - `stopAllActions`
  - `stopActionByTag`
  - `stopActionsByFlags`
  - `stopAllActionsByTag`
  - `getNumberOfRunningActions`
  - `getNumberOfRunningActionsByTag`