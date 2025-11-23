local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend({
	{
		type = "item",
		name = "tar",
		icon = "__scrap-chemistry__/graphics/icons/tar.png",
		pictures = {
			{size=64, filename="__scrap-chemistry__/graphics/icons/tar.png",   scale=0.5, mipmap_count=4},
			{size=64, filename="__scrap-chemistry__/graphics/icons/tar-1.png", scale=0.5, mipmap_count=4},
			{size=64, filename="__scrap-chemistry__/graphics/icons/tar-2.png", scale=0.5, mipmap_count=4}
		},
		subgroup = "raw-material",
    	order = "b[chemistry]-b[tar]",
		inventory_move_sound = item_sounds.sulfur_inventory_move,
		pick_sound = item_sounds.resource_inventory_pickup,
		drop_sound = item_sounds.sulfur_inventory_move,
		stack_size = 50,
		weight = 1*kg,
		random_tint_color = item_tints.yellowing_coal
	}
})
