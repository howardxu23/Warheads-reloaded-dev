function sprite(name)--REMEBER TO REMOVE "-dev" FOR RELEASE
    return "__Warheads-reloaded-dev__/graphics/"..name
end
function warhead_prototype(name)--REMEBER TO REMOVE "-dev" FOR RELEASE
    return "__Warheads-reloaded-dev__/prototypes/"..name
end
require("prototypes.warheads")
require("prototypes.basegame-weapontype-add")
--[[
if mods["SchallTankPlatoon"] then
  require("prototypes.compatibility.SchallTankPlatoon-weapontypes")
  --require("prototypes.compatibility.SchallTankPlatoon-warheads")
end
if mods["space-exploration"] then
  require("prototypes.compatibility.SE-weapontypes")
end
if mods["lightArtillery"] or mods["lightArtillery-Balanced"]then
  require("prototypes.compatibility.LightArtillery-weapontypes")
end


if mods["bobwarfare"] then
  require("prototypes.compatibility.bobs-weapontypes")
end


if mods["Krastorio2"] then
  require("prototypes.compatibility.K2-weapontypes")
end

if mods["IndustrialRevolution"] then
  require("prototypes.compatibility.IR2-tmp-patch")
end
if mods["aai-vehicles-ironclad"] then
  require("prototypes.compatibility.aai-ironclad")
end
if mods["RampantArsenal"] then
  require("prototypes.compatibility.rampant-arsenal")
end
]]--