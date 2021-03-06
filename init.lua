minetest.register_node("aquarium_glass:glass",{
	description = "Aquarium Glass",
	inventory_image = minetest.inventorycube(
		"aquarium_glass.png","aquarium_glass.png","aquarium_glass.png"
	),
	drawtype = "liquid",
	alpha = 80,
	liquidtype = "source",
	liquid_renewable = false,
	liquid_alternative_flowing = "aquarium_glass:glassf",
	liquid_range = 0,
	tiles = {"aquarium_glass.png"},
	paramtype = "light",
	groups = {cracky = 1,},
})

minetest.register_node("aquarium_glass:glassf",{
	description = "Aquarium Glass - Hacker",
	drawtype = "liquid",
	alpha = 80,
	liquidtype = "source",
	liquid_renewable = false,
	liquid_alternative_source = "aquarium_glass:glass",
	liquid_range = 0,
	tiles = {"aquarium_glass.png"},
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory = 1},
})

minetest.register_craft{
	output = "aquarium_glass:glass 8",
	recipe = {
		{"default:glass","default:glass","default:glass"},
		{"default:glass","default:steelblock","default:glass"},
		{"default:glass","default:glass","default:glass"},
	},
}
