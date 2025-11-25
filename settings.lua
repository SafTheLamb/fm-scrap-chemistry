data:extend({
	{
		type = "bool-setting",
		name = "scrap-chemistry-sulfur",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "scrap-chemistry-rocket-fuel",
		setting_type = "startup",
		default_value = true
	}
})

if mods["space-age"] then
	data:extend({
		{
			type = "bool-setting",
			name = "scrap-chemistry-thruster",
			setting_type = "startup",
			default_value = true
		}
	})
end
