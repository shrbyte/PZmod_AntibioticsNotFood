require "TimedActions/ISBaseTimedAction"

local old_ISTakePillAction_Perform = ISTakePillAction.perform;
function ISTakePillAction:perform()
    old_ISTakePillAction_Perform(self);
    LuaEventManager.triggerEvent("OnTakePillActionCompleted", self.character, self.item);
end