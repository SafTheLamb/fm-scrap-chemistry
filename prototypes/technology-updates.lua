local ftech = require("__fdsl__.lib.technology")

ftech.add_unlock("oil-processing", "petroleum-gas-cracking")
ftech.add_unlock("oil-processing", "solid-fuel-from-butane")
ftech.add_unlock("plastics", "plastic-bar-from-butane")

ftech.add_unlock("flammables", "methane")
ftech.add_prereq("explosives", "flammables")

if not settings.startup["scrap-chemistry-sulfur"].value then
	ftech.add_unlock("sulfur-processing", "sulfur-from-sour-gas")
end

if mods["space-age"] then
	ftech.add_unlock("space-platform-thruster", "methane-from-carbon", 3)
	ftech.add_unlock("calcite-processing", "sour-gas-sweetening")
	ftech.add_unlock("electromagnetic-plant","electrolyte-souring")
	ftech.add_unlock("electromagnetic-plant", "sour-gas-pollution")
	ftech.add_unlock("planet-discovery-aquilo", "hydrazine", 4)
	local coal_liquefaction = data.raw.technology["coal-liquefaction"]
	if coal_liquefaction then
		coal_liquefaction.icon = "__scrap-chemistry__/graphics/technology/coal-liquefaction.png"
	end
else
	ftech.add_unlock("sulfur-processing", "sour-gas-sweetening")
	ftech.add_unlock("sulfur-processing", "sour-gas-pollution")
end
