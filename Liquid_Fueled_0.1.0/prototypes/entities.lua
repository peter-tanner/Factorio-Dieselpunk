
mod_scale = 2/3

data:extend(
{
	{
		type = "assembling-machine",
		name = "gasification-plant",
		icon = "__base__/graphics/icons/chemical-plant.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gasification-plant"},
		max_health = 300,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
		--[[module_specification =
		{
			module_slots = 3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},]]

		animation = make_4way_animation_from_spritesheet({ layers =
		{
			{
				filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
				width = 122,
				height = 134,
				frame_count = 1,
				shift = util.by_pixel(-5, -4.5),
				scale = mod_scale,
				hr_version = {
					filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
					width = 244,
					height = 268,
					frame_count = 1,
					shift = util.by_pixel(-5, -4.5),
					scale = 0.5 * mod_scale
				}
			},
			{
				filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
				width = 175,
				height = 110,
				frame_count = 1,
				shift = util.by_pixel(31.5, 11),
				scale = mod_scale,
				draw_as_shadow = true,
				hr_version = {
					filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
					width = 350,
					height = 219,
					frame_count = 1,
					shift = util.by_pixel(31.5, 10.75),
					draw_as_shadow = true,
					scale = 0.5 * mod_scale
					}
			},
		}}),
		working_visualisations =
		{
			{
				north_position = util.by_pixel(30, -24),
				west_position = util.by_pixel(1, -49.5),
				south_position = util.by_pixel(-30, -48),
				east_position = util.by_pixel(-11, -1),
				apply_recipe_tint = "primary",
				animation =
				{
					filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch.png",
					frame_count = 32,
					width = 15,
					height = 10,
					animation_speed = 0.5,
					scale = mod_scale,
					hr_version = {
						filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch.png",
						frame_count = 32,
						width = 30,
						height = 20,
						animation_speed = 0.5,
						scale = 0.5 * mod_scale
					}
				}
			},
			{
				north_position = util.by_pixel(30, -24),
				west_position = util.by_pixel(1, -49.5),
				south_position = util.by_pixel(-30, -48),
				east_position = util.by_pixel(-11, -1),
				apply_recipe_tint = "secondary",
				animation =
				{
					filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch-mask.png",
					frame_count = 32,
					width = 15,
					height = 10,
					animation_speed = 0.5,
					scale = mod_scale,
					hr_version = {
						filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch-mask.png",
						frame_count = 32,
						width = 30,
						height = 20,
						animation_speed = 0.5,
						scale = 0.5 * mod_scale
					}
				}
			},
			{
				apply_recipe_tint = "tertiary",
				north_position = {0, 0},
				west_position = {0, 0},
				south_position = {0, 0},
				east_position = {0, 0},
				north_animation =
				{
					filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
					frame_count = 1,
					width = 87,
					height = 60,
					shift = util.by_pixel(0, -5),
					scale = mod_scale,
					hr_version = {
						filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
						x = 0,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5 * mod_scale
					}
				},
				east_animation =
				{
					filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
					x = 87,
					frame_count = 1,
					width = 87,
					height = 60,
					shift = util.by_pixel(0, -5),
					scale = mod_scale,
					hr_version = {
						filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
						x = 174,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5 * mod_scale
					}
				},
				south_animation =
				{
					filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
					x = 174,
					frame_count = 1,
					width = 87,
					height = 60,
					shift = util.by_pixel(0, -5),
					scale = mod_scale,
					hr_version = {
						filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
						x = 348,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5 * mod_scale
					}
				}
			}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				{
					filename = "__base__/sound/boiler.ogg",
					volume = 0.8
				}
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		crafting_speed = 1.25,
		energy_source =
		{
		  type = "burner",
		  fuel_category = "chemical",
		  effectivity = 0.9,
		  emissions = 0.03 / 3.5,
		  fuel_inventory_size = 1,
		 --[[smoke =
		  {
			{
			  name = "smoke",
			  frequency = 10,
			  position = {0.7, -1.2},
			  starting_vertical_speed = 0.08,
			  starting_frame_deviation = 60
			}
		  }]]
		},
		--[[energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.03 / 3.5
		},]]
		energy_usage = "210kW",
		ingredient_count = 4,
		crafting_categories = {"gasification-recipes"},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-0.5, -1.5} }}
			},
			--[[
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			},]]
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-0.5, 1.5} }}
			}
			--[[
			{	
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, 2} }}
			}]]
		}
	}
}
)