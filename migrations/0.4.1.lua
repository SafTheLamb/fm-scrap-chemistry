for _,force in pairs(game.forces) do
	local recipes = force.recipes
	local technologies = force.technologies
	if technologies["oil-processing"].researched then
		if settings.startup["scrap-chemistry-butane-realism"].value then
			recipes["butane-cracking"].enabled = true
		else
			recipes["petroleum-gas-cracking"].enabled = true
		end
	end
end
