local frep = require("__fdsl__.lib.recipe")

-------------------------------------------------------------------------- Basic oil processing

-- Basic oil processing
local _,basic_petroleum_result = frep.get_result("basic-oil-processing", "petroleum-gas")
if basic_petroleum_result then
	local amount_min = 5 * math.floor(0.1 * basic_petroleum_result.amount)
	local amount_max = basic_petroleum_result.amount
	basic_petroleum_result.amount = nil
	basic_petroleum_result.amount_min = amount_min
	basic_petroleum_result.amount_max = amount_max
	basic_petroleum_result.fluidbox_index = 2
	frep.add_result("basic-oil-processing", {type="fluid", name="butane", amount_min=amount_min, amount_max=amount_max, fluidbox_index=3})
	frep.add_result("basic-oil-processing", {type="fluid", name="sour-gas", amount_min=amount_min, amount_max=amount_max, fluidbox_index=1})
	frep.add_result("basic-oil-processing", {type="item", name="tar", amount=2, probability=0.47})
end

local advanced_oil_processing = data.raw.recipe["advanced-oil-processing"]
if advanced_oil_processing and advanced_oil_processing.results then
	frep.replace_result("advanced-oil-processing", "petroleum-gas", "butane")
	for _,result in pairs(advanced_oil_processing.results) do
		if result.amount then
			result.amount_min = 5 * math.floor(0.1 * result.amount)
			result.amount_max = result.amount
			result.amount = nil
		end
	end
	frep.add_result("basic-oil-processing", {type="item", name="tar", amount=1, probability=0.29})
end

-------------------------------------------------------------------------- Tar

frep.add_ingredient("refined-concrete", {type="item", name="tar", amount=1})
frep.add_ingredient("flamethrower-ammo", {type="item", name="tar", amount=2})
frep.add_ingredient("rocket-fuel", {type="item", name="tar", amount=2})
frep.replace_ingredient("explosives", "coal", "tar")
