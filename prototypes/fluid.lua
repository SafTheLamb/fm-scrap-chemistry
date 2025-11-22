data:extend({
	{
		type = "fluid",
		name = "butane",
		icon = "__scrap-chemistry__/graphics/icons/fluid/butane.png",
		subgroup = "fluid",
		order = "a[fluid]-b[oil]-b[petroleum-gas]-b[butane]",
		default_temperature = 25,
		gas_temperature = 25,
		base_color = {0.4, 0.2, 0.4},
		flow_color = {0.9, 0.9, 0.9}
	},
	{
		type = "fluid",
		name = "sour-gas",
		icon = "__scrap-chemistry__/graphics/icons/fluid/sour-gas.png",
		subgroup = "fluid",
		order = "a[fluid]-b[oil]-f[sulfuric-acid]-b[sour-gas]",
		default_temperature = 25,
		gas_temperature = 25,
		base_color = {0.85, 0.75, 0.2},
		flow_color = {0.9, 1, 0.25},
	}
})
