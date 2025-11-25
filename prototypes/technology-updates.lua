local ftech = require("__fdsl__.lib.technology")

ftech.add_prereq("concrete", "oil-processing")
ftech.add_unlock("oil-processing", "solid-fuel-from-butane")
ftech.add_unlock("oil-processing", "petroleum-gas-cracking")
ftech.add_unlock("plastics", "plastic-bar-from-butane")
ftech.add_unlock("sulfur-processing", "sour-gas-sweetening")
ftech.add_unlock("sulfur-processing", "sulfur-from-sour-gas")
ftech.add_unlock("advanced-oil-processing", "butane-pollution")

ftech.add_unlock("flammables", "methane")
ftech.add_prereq("explosives", "flammables")

if mods["space-age"] then
	ftech.add_unlock("space-platform-thruster", "methane-from-carbon", 3)
end
