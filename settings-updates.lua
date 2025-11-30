if mods["Rocs-Hardcore-Demolishers"] then
	local setting = data.raw["bool-setting"]["rocs-hardcore-vulcanus-nerf-coal-liquefaction-recipes"]
	if setting then
		setting.forced_value = false
		setting.hidden = true
	end
end
