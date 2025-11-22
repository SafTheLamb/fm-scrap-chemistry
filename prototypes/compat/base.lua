ScrapIndustry.recipes["basic-oil-processing"] = {ignored=true}
ScrapIndustry.recipes["advanced-oil-processing"] = {ignored=true}

ScrapIndustry.products["butane"] = {priority=1, type="fluid"}
ScrapIndustry.items["petroleum-gas"] = {scrap="butane", scale=ScrapIndustry.COMMON, failrate=0.02}

ScrapIndustry.products["sour-gas"] = {priority=5, type="fluid"}
ScrapIndustry.items["sulfur"] = {scrap="sour-gas", scale=ScrapIndustry.CHEAP, failrate=0.02}
ScrapIndustry.items["sulfuric-acid"] = {scrap="sour-gas", scale=ScrapIndustry.CHEAP, failrate=0.01}
ScrapIndustry.recipes["sulfur"] = {self_scrap=true}
ScrapIndustry.recipes["sulfuric-acid"] = {self_scrap=true}

ScrapIndustry.products["tar"] = {priority=5}
ScrapIndustry.items["heavy-oil"] = {scrap="tar", scale=ScrapIndustry.CHEAP, failrate=0.01}
ScrapIndustry.items["light-oil"] = {scrap="tar", scale=ScrapIndustry.FLAVOR, failrate=0.01}

