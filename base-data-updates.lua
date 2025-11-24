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

-------------------------------------------------------------------------- Tar

frep.add_ingredient("refined-concrete", {type="item", name="tar", amount=1})
frep.add_ingredient("flamethrower-ammo", {type="item", name="tar", amount=2})
frep.add_ingredient("rocket-fuel", {type="item", name="tar", amount=2})
frep.replace_ingredient("explosives", "coal", "tar")
