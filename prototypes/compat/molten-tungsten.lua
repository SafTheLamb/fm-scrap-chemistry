if mods["molten-tungsten"] then
	if settings.startup["scrap-chemistry-casting-tar"].value then
		ScrapIndustry.items["molten-tungsten"] = {scrap="tar", scale=ScrapIndustry.FLAVOR, failrate=0.01}
	end
end
