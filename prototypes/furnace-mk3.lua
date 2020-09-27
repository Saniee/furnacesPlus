--furnace-t3.lua

local accumulatorFurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])

accumulatorFurnace.name = "furnace-mk3"
accumulatorFurnace.icons = {
    {
      icon = accumulatorFurnace.icon,
      tint = {r=0,g=0,b=1}
    },
}
accumulatorFurnace.crafting_speed = 8
accumulatorFurnace.module_specification.module_slots = 4
accumulatorFurnace.energy_usage = "560kW"
accumulatorFurnace.energy_source.emissions_per_minute = 0.5
accumulatorFurnace.energy_source.drain = "300W"

accumulatorFurnace.minable.result = "furnace-mk3"

accumulatorFurnace.animation =
{
        layers =
        {
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
            tint = {r=0,g=0,b=1},
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            hr_version =
            {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
              tint = {r=0,g=0,b=1},
              priority = "high",
              width = 239,
              height = 219,
              frame_count = 1,
              shift = util.by_pixel(0.75, 5.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            tint = {r=0,g=0,b=1},
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
              tint = {r=0,g=0,b=1},
              priority = "high",
              width = 227,
              height = 171,
              frame_count = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(11.25, 7.75),
              scale = 0.5
            }
          }
        }
      }
accumulatorFurnace.working_visualisations =
      {
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
            tint = {r=0,g=0,b=1},
            priority = "high",
            width = 25,
            height = 15,
            frame_count = 12,
            animation_speed = 0.5,
            shift = {0.015625, 0.890625},
            hr_version =
            {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
              tint = {r=0,g=0,b=1},
              priority = "high",
              width = 60,
              height = 56,
              frame_count = 12,
              animation_speed = 0.5,
              shift = util.by_pixel(1.75, 32.75),
              scale = 0.5
            }
          },
          light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            tint = {r=0,g=0,b=1},
            priority = "high",
            width = 19,
            height = 13,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {-0.671875, -0.640625},
            hr_version =
            {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
              tint = {r=0,g=0,b=1},
              priority = "high",
              width = 37,
              height = 25,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(-20.5, -18.5),
              scale = 0.5
            }
          }
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
            tint = {r=0,g=0,b=1},
            priority = "high",
            width = 12,
            height = 9,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {0.0625, -1.234375},
            hr_version =
            {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
              tint = {r=0,g=0,b=1},
              priority = "high",
              width = 23,
              height = 15,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(3.5, -38),
              scale = 0.5
            }
          }
        }
      }
accumulatorFurnace.water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
          tint = {r=0,g=0,b=1},
          priority = "extra-high",
          width = 24,
          height = 24,
          shift = util.by_pixel(5, 40),
          variation_count = 1,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = false
      }

data:extend{accumulatorFurnace}
data:extend(
        {
                {
                        type = "item",
                        name = "furnace-mk3",
                        icon = "__furnacesPlus__/graphics/icons/electric-furnace.png",
                        icon_size = 64, icon_mipmaps = 4,
                        subgroup = "smelting-machine",
                        place_result = "furnace-mk3",
                        stack_size = 5,
                        order = "z+"
                },
                {
                        type = "recipe",
                        enabled = false,
                        name = "furnace-mk3",
                        energy_required = 120,
                        ingredients = {{"steel-plate", 120}, {"processing-unit", 45}, {"stone-brick", 60}, {"electric-engine-unit", 20}},
                        result = "furnace-mk3"
                },
                {
                        type = "technology",
                        enabled = true,
                        name = "furnace-mk3",
                        icon_size = 64,
                        icon = "__furnacesPlus__/graphics/icons/electric-furnace.png",
                        prerequisites = {"logistic-science-pack", "chemical-science-pack", "furnace-mk2", "advanced-material-processing-2", "advanced-electronics-2", "electric-engine"},
                        effects =
                        {
                          {
                            type = "unlock-recipe",
                            recipe = "furnace-mk3"
                          }
                        },
                        unit =
                        {
                          count = 1000,
                          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
                          time = 120
                        },
                        order = "a-b-a"
                }
        }
)