local ftech = require("__fdsl__.lib.technology")

ftech.add_prereq("concrete", "oil-processing")
ftech.add_unlock("oil-processing", "solid-fuel-from-butane")
ftech.add_unlock("plastics", "plastic-bar-from-butane")
