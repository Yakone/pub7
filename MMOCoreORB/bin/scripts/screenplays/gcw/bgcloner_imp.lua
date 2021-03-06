local ObjectManager = require("managers.object.object_manager")

bgcloner_imp = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "bgcloner_imp",
  	states = {onleave = 1, overt = 2},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("bgcloner_imp", true)
  
function bgcloner_imp:start()
    	self:spawnActiveAreas()
	
end


  
function bgcloner_imp:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("tatooine", "object/active_area.iff", 6107.9, 50, -446.9, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(18)
	        createObserver(ENTEREDAREA, "bgcloner_imp", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "bgcloner_imp", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
--checks if player enters the zone, and what to do with them.
function bgcloner_imp:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isRebel()) then
			player:sendSystemMessage("You are being teleported to the correct area")
			player:teleport(6390, 50.0, -392.8, 0)
	
		end
		return 0
	end)
end
--Simply sends a system message
function bgcloner_imp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isRebel()) then
			player:sendSystemMessage("You are now on the correct side of the Battlefield")
		end
		return 0
	end)
end
