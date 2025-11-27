local frep = require("__fdsl__.lib.recipe")

-------------------------------------------------------------------------- Oil processing

-- Basic oil processing
local _,basic_petroleum_result = frep.get_result("basic-oil-processing", "petroleum-gas")
if basic_petroleum_result then
	local amount = basic_petroleum_result.amount
	basic_petroleum_result.fluidbox_index = 3
	frep.add_result("basic-oil-processing", {type="fluid", name="butane", amount=amount - 5, fluidbox_index=2})
	frep.add_result("basic-oil-processing", {type="fluid", name="sour-gas", amount=amount - 20, fluidbox_index=1})
end

local function fudge_results(recipe_name, extra_amount)
	extra_amount = extra_amount or 0
	local recipe = data.raw.recipe[recipe_name]
	if recipe and recipe.results then
		for _,result in pairs(recipe.results) do
			if result.amount then
				local scale = 1 - 0.4 * math.random()
				result.amount_min = scale * result.amount + extra_amount
				result.amount_max = result.amount + extra_amount
				result.amount = nil
			end
		end
	end
end

fudge_results("basic-oil-processing")
fudge_results("advanced-oil-processing", 10)
fudge_results("tar-liquefaction")
fudge_results("petroleum-gas-cracking")
fudge_results("sour-gas-sweetening")
fudge_results("butane-pollution")

frep.add_result("basic-oil-processing", {type="item", name="tar", amount=2, probability=0.47})
frep.add_result("advanced-oil-processing", {type="item", name="tar", amount=1, probability=0.29})
frep.replace_result("advanced-oil-processing", "petroleum-gas", "butane")

-------------------------------------------------------------------------- Methane

frep.replace_ingredient("explosives", "water", "methane")

if settings.startup["scrap-chemistry-rocket-fuel"].value then
	local rocket_fuel_recipe = data.raw.recipe["rocket-fuel"]
	if rocket_fuel_recipe then
		frep.add_category("rocket-fuel", "chemistry")
		frep.add_ingredient("rocket-fuel", {type="fluid", name="methane", amount=10})
		rocket_fuel_recipe.crafting_machine_tint = rocket_fuel_recipe.crafting_machine_tint or {
			primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
			secondary = {r = 0.996, g = 0.742, b = 0.408, a = 1.000},
			tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000},
			quaternary = {r = 0.656, g = 0.562, b = 0.264, a = 1.000},
		}
	end

	if mods["space-age"] then
		frep.replace_ingredient("rocket-fuel-from-jelly", "water", "methane")
	end
end

if mods["space-age"] and settings.startup["scrap-chemistry-thruster"].value then
	frep.replace_ingredient("thruster-fuel", "carbon", {type="fluid", name="methane", amount=20})
	local advanced_thruster_fuel = data.raw.recipe["advanced-thruster-fuel"]
	if advanced_thruster_fuel then
		frep.replace_ingredient("advanced-thruster-fuel", "carbon", {type="fluid", name="methane", amount=20})
		advanced_thruster_fuel.icons = {
			{icon="__scrap-chemistry__/graphics/icons/fluid/methane.png", shift={-8,-8}, scale=0.3, draw_background=true},
			{icon="__space-age__/graphics/icons/calcite.png", shift={8,-8}, scale=0.3, draw_background=true},
			{icon="__space-age__/graphics/icons/fluid/thruster-fuel.png", shift={0,4}, scale=0.4, draw_background=true}
		}
	end
end

-------------------------------------------------------------------------- Sulfur

if settings.startup["scrap-chemistry-sulfur"].value then
	frep.replace_ingredient("sulfur", "petroleum-gas", "sour-gas")
	frep.add_result("heavy-oil-cracking", {type="fluid", name="sour-gas", amount=10})
	frep.add_result("light-oil-cracking", {type="fluid", name="sour-gas", amount=5})

	if mods["space-age"] then
		local sulfur_geyser = data.raw.resource["sulfuric-acid-geyser"]
		if sulfur_geyser then
			sulfur_geyser.localised_name = {"entity-name.sour-gas-geyser"}
			if sulfur_geyser.minable then
				for _,result in pairs(sulfur_geyser.minable.results or {}) do
					if result.name == "sulfuric-acid" then
						result.name = "sour-gas"
					end
				end
			end
		end
	end
end

-------------------------------------------------------------------------- Tar

frep.add_ingredient("flamethrower-ammo", {type="item", name="tar", amount=2})
local coal_liquefaction = data.raw.recipe["coal-liquefaction"]
if coal_liquefaction then
	coal_liquefaction.icon = "__scrap-chemistry__/graphics/icons/fluid/coal-liquefaction.png"
	frep.replace_ingredient("coal-liquefaction", "heavy-oil", "light-oil")
	frep.replace_result("coal-liquefaction", "petroleum-gas", "butane")
	frep.replace_result("coal-liquefaction", "light-oil", "petroleum-gas")
	frep.replace_result("coal-liquefaction", "heavy-oil", "light-oil")
	-- simple coal liquefaction too!
end
if mods["space-age"] then
	local simple_coal_liquefaction = data.raw.recipe["simple-coal-liquefaction"]
	if simple_coal_liquefaction then
		simple_coal_liquefaction.icons = {
			{icon="__space-age__/graphics/icons/calcite-2.png", shift={-6,-6}, scale=0.3, draw_background=true},
			{icon="__scrap-chemistry__/graphics/icons/fluid/simple-coal-liquefaction-overlay.png", draw_background=true},
		}
		frep.replace_result("simple-coal-liquefaction", "heavy-oil", "petroleum-gas")
		frep.add_result("simple-coal-liquefaction", {type="fluid", name="butane", amount=10})
		frep.add_result("simple-coal-liquefaction", {type="item", name="tar", amount=1})
	end
end

-------------------------------------------------------------------------- Hydrazine

if mods["space-age"] then
	local ammonia_rocket_fuel = data.raw.recipe["ammonia-rocket-fuel"]
	if ammonia_rocket_fuel then
		ammonia_rocket_fuel.localised_name = {"recipe-name.hydrazine-rocket-fuel"}
		ammonia_rocket_fuel.order = "a[ammonia]-c[hydrazine]-a[rocket-fuel]"
		frep.remove_ingredient("ammonia-rocket-fuel", "water")
		frep.replace_ingredient("ammonia-rocket-fuel", "ammonia", "hydrazine")
	end
	frep.replace_ingredient("fluoroketone", "ammonia", "hydrazine")
	frep.replace_ingredient("fusion-power-cell", "ammonia", "hydrazine")
end
