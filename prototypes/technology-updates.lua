local ftech = require("__fdsl__.lib.technology")

ftech.add_prereq("concrete", "oil-processing")
ftech.add_unlock("oil-processing", "solid-fuel-from-butane")
ftech.add_unlock("oil-processing", "petroleum-gas-cracking")
ftech.add_unlock("plastics", "plastic-bar-from-butane")
ftech.add_unlock("sulfur-processing", "sour-gas-sweetening")
ftech.add_unlock("advanced-oil-processing", "butane-pollution")
