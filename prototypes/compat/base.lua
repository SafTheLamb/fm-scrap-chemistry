ScrapIndustry.recipes["basic-oil-processing"] = {ignore=true}
ScrapIndustry.recipes["advanced-oil-processing"] = {ignore=true}

ScrapIndustry.products["butane"] = {priority=1, type="fluid"}
ScrapIndustry.items["petroleum-gas"] = {scrap="butane", scale=ScrapIndustry.COMMON, failrate=0.02}
ScrapIndustry.recipes["plastic-bar"] = {ignore=true}

ScrapIndustry.products["sour-gas"] = {priority=5, type="fluid"}
ScrapIndustry.items["sulfur"] = {scrap="sour-gas", scale=ScrapIndustry.CHEAP, failrate=0.02}
ScrapIndustry.items["sulfuric-acid"] = {scrap="sour-gas", scale=ScrapIndustry.CHEAP, failrate=0.01}
ScrapIndustry.items["battery"] = {scrap="sour-gas", scale=ScrapIndustry.COMMON, failrate=0.02}
ScrapIndustry.items["battery-equipment"] = {scrap="sour-gas", scale=ScrapIndustry.UNCOMMON, failrate=0.01}
ScrapIndustry.items["battery-mk2-equipment"] = {scrap="sour-gas", scale=ScrapIndustry.EXPENSIVE, failrate=0.01}
ScrapIndustry.recipes["sulfur"] = {self_scrap=true}
ScrapIndustry.recipes["sulfuric-acid"] = {self_scrap=true}

ScrapIndustry.products["tar"] = {priority=5}
ScrapIndustry.items["heavy-oil"] = {scrap="tar", scale=ScrapIndustry.CHEAP, failrate=0.01}
ScrapIndustry.items["light-oil"] = {scrap="tar", scale=ScrapIndustry.FLAVOR, failrate=0.01}

ScrapIndustry.products["heavy-oil"] = {priority=1, type="fluid"}
ScrapIndustry.items["lubricant"] = {scrap="heavy-oil", scale=ScrapIndustry.CHEAP, failrate=0.01}

ScrapIndustry.recipes["solid-fuel-from-butane"] = {failrate=0.01}
