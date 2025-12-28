if mods["bzlead"] then
	if mods["space-age"] then
		if settings.startup["scrap-chemistry-casting-tar"].value then
			ScrapIndustry.items["molten-lead"] = {scrap="tar", scale=ScrapIndustry.FLAVOR, failrate=0.01}
		end
	end
end

if mods["bztin"] then
	if mods["space-age"] then
		if settings.startup["scrap-chemistry-casting-tar"].value then
			ScrapIndustry.items["molten-tin"] = {scrap="tar", scale=ScrapIndustry.FLAVOR, failrate=0.01}
		end
	end
end
