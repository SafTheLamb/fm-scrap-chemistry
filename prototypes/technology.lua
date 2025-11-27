data:extend({
	{
		type = "technology",
		name = "tar-processing",
		icon = "__scrap-chemistry__/graphics/technology/tar-processing.png",
		icon_size = 256,
		effects = {
			{type="unlock-recipe", recipe="tar"},
			{type="unlock-recipe", recipe="tar-liquefaction"},
			{type="unlock-recipe", recipe="butane-pollution"}
		},
		prerequisites = {"advanced-oil-processing"},
		unit = {
			count = 150,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		}
	}
})
