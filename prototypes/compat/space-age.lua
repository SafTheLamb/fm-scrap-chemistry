if mods["space-age"] then
	ScrapIndustry.products["holmium-solution"] = {type="fluid", priority=2}
	ScrapIndustry.items["electrolyte"] = {scrap="holmium-solution", scale=ScrapIndustry.PRODUCT, failrate=0.01}

	ScrapIndustry.items["molten-iron"] = {scrap="tar", scale=ScrapIndustry.FLAVOR, failrate=0.01}
	ScrapIndustry.items["molten-copper"] = {scrap="tar", scale=ScrapIndustry.FLAVOR, failrate=0.01}
end
