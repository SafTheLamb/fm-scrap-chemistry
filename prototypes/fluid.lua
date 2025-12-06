data:extend({
	{
		type = "fluid",
		name = "butane",
		icon = "__scrap-chemistry__/graphics/icons/fluid/butane.png",
		subgroup = "fluid",
		order = "a[fluid]-b[oil]-b[petroleum-gas]-b[butane]",
		default_temperature = 25,
		gas_temperature = 25,
		fuel_value = "900kJ", -- Balanced relative to fuel values provided by Gas Boiler
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
	},
	{
		type = "fluid",
		name = "methane",
		icon = "__scrap-chemistry__/graphics/icons/fluid/methane.png",
		subgroup = "fluid",
		order = "a[fluid]-b[oil]-m[methane]",
		default_temperature = 15,
		gas_temperature = 15,
		max_temperature = 535,
		heat_capacity = "0.22kJ",
		fuel_value = "300kJ", -- Balanced relative to fuel values provided by Gas Boiler
		auto_barrel = false,
		base_color = {0.5, 0.5, 1},
		flow_color = {1, 1, 1}
	}
})

if mods["space-age"] then
	data:extend({
		{
			type = "fluid",
			name = "hydrazine",
			icon = "__scrap-chemistry__/graphics/icons/fluid/hydrazine.png",
			subgroup = "fluid",
			order = "b[new-fluid]-e[aquilo]-c[hydrazine]",
			default_temperature = 25,
			heat_capacity = "0.44kJ",
			fuel_value = "2.4MJ",
			base_color = {0.25, 0.25, 1},
			flow_color = {0.75, 0.75, 1}
		}
	})
end
