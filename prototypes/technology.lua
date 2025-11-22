data:extend({
	{
		type = "technology",
		name = "tar",
		icon = "__scrap-chemistry__/graphics/technology/tar.png",
		icon_size = 256,
		effects = {
			{type="unlock-recipe", recipe="tar-liquefaction"},
			{type="unlock-recipe", recipe="synthetic-tar"}
		},
		prerequisites = {"oil-processing"},
		unit = {
			count = 150,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 30
		}
	}
})
