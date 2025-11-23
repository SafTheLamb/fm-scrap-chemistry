data:extend({
	{
		type = "recipe",
		name = "tar-liquefaction",
		category = "chemistry",
		icon = "__scrap-chemistry__/graphics/icons/fluid/tar-liquefaction.png",
		subgroup = "fluid-recipes",
		order = "a[oil-processing]-d[tar-liquefaction]",
		enabled = false,
		allow_productivity = true,
		hide_from_signal_gui = false,
		energy_required = 5,
		ingredients = {
			{type="item", name="tar", amount=10},
			{type="fluid", name="steam", amount=150, fluidbox_index=1}
		},
		results = {
			{type="fluid", name="crude-oil", amount=100},
			{type="fluid", name="heavy-oil", amount=20}
		}
	},
	{
		type = "recipe",
		name = "petroleum-gas-cracking",
		icon = "__scrap-chemistry__/graphics/icons/fluid/petroleum-gas-cracking.png",
		category = "chemistry",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-c[petroleum-gas-cracking]",
		enabled = false,
		allow_productivity = true,
		hide_from_signal_gui = false,
		energy_required = 2,
		-- Technically, 4*C3H8 (propane) + 2*H2O = 3*C4H10 (butane) + 1*O2
		-- but this is more balanced with butane pollution
		ingredients = {
			{type="fluid", name="petroleum-gas", amount=20},
			{type="fluid", name="water", amount=30}
		},
		results = {{type="fluid", name="butane", amount=10}}
	},
	{
		type = "recipe",
		name = "butane-pollution",
		icon = "__scrap-chemistry__/graphics/icons/fluid/butane-pollution.png",
		category = "chemistry",
		subgroup = "fluid-recipes",
		order = "d[other-chemistry]-B[butane-pollution]",
		enabled = false,
		allow_productivity = true,
		hide_from_signal_gui = false,
		energy_required = 10,
		emissions_multiplier = 5,
		ingredients = {
			{type="fluid", name="butane", amount=100},
			{type="fluid", name="water", amount=100},
			{type="item", name="coal", amount=1}
		},
		results = {
			{type="fluid", name="light-oil", amount=20},
			{type="fluid", name="sour-gas", amount=20}
		}
	},
	{
		type = "recipe",
		name = "solid-fuel-from-butane",
		icon = "__scrap-chemistry__/graphics/icons/solid-fuel-from-butane.png",
		category = "chemistry",
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-c[solid-fuel-from-butane]",
		enabled = false,
		allow_productivity = true,
		hide_from_signal_gui = false,
		energy_required = 1,
		ingredients = {{type="fluid", name="butane", amount=20}},
		results = {{type="item", name="solid-fuel", amount=1}},
		crafting_machine_tint = data.raw.recipe["solid-fuel-from-petroleum-gas"].crafting_machine_tint
	},
	{
		type = "recipe",
		name = "sour-gas-sweetening",
		icon = "__scrap-chemistry__/graphics/icons/fluid/sour-gas-sweetening.png",
		category = "chemistry",
		subgroup = "fluid-recipes",
		order = "d[other-chemistry]-D[sour-gas-sweetening]",
		enabled = false,
		allow_productivity = true,
		hide_from_signal_gui = false,
		energy_required = 1,
		ingredients = {
			{type="item", name="iron-plate", amount=1},
			{type="fluid", name="sour-gas", amount=50},
			{type="fluid", name="water", amount=100}
		},
		results = {{type="fluid", name="sulfuric-acid", amount=50}}
	},
	{
		type = "recipe",
		name = "plastic-bar-from-butane",
		icons = {
			{icon="__scrap-chemistry__/graphics/icons/fluid/butane.png", shift={-12,-12}, scale=0.4},
			{icon="__base__/graphics/icons/plastic-bar.png", draw_background=true},
		},
		category = "chemistry",
		enabled = false,
		allow_productivity = true,
		auto_recycle = false,
		allow_decomposition = false,
		hide_from_signal_gui = false,
		energy_required = 1,
		ingredients = {
			{type="fluid", name="butane", amount=20},
			{type="item", name="coal", amount=1}
		},
		results = {
			{type="item", name="plastic-bar", amount=2}
		},
		crafting_machine_tint = data.raw.recipe["plastic-bar"].crafting_machine_tint
	},
	{
		type = "recipe",
		name = "tar",
		localised_name = {"recipe-name.synthetic-tar"},
		category = "chemistry",
		subgroup = "raw-material",
		order = "b[chemistry]-b[tar]",
		enabled = false,
		allow_productivity = true,
		auto_recycle = false,
		allow_decomposition = false,
		hide_from_signal_gui = false,
		energy_required = 2,
		ingredients = {
			{type="fluid", name="crude-oil", amount=125},
			{type="item", name="coal", amount=3}
		},
		results = {{type="item", name="tar", amount=1}}
	}
})
