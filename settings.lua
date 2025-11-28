data:extend({
	{
		type = "bool-setting",
		name = "scrap-chemistry-sulfur",
		setting_type = "startup",
		default_value = true,
		order = "a[overhaul]-a[sulfur]"
	},
	{
		type = "bool-setting",
		name = "scrap-chemistry-rocket-fuel",
		setting_type = "startup",
		default_value = true,
		order = "b[other]-a[rocket-fuel]"
	},
	{
		type = "bool-setting",
		name = "scrap-chemistry-butane-realism",
		setting_type = "startup",
		default_value = true,
		order = "a[overhaul]-b[butane]"
	}
})

if mods["space-age"] then
	data:extend({
		{
			type = "bool-setting",
			name = "scrap-chemistry-thruster",
			setting_type = "startup",
			default_value = true,
			order = "c[space-age]-a[thruster-fuel]"
		}
	})
end
