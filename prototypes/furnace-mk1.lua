--furnace-t1.lua

local accumulatorFurnace = table.deepcopy(data.raw["furnace"]["stone-furnace"])

accumulatorFurnace.name = "furnace-mk1"
accumulatorFurnace.icons = {
        {
          icon = accumulatorFurnace.icon,
          tint = {r=1,g=0,b=0}
        },
}
accumulatorFurnace.crafting_speed = 2
accumulatorFurnace.energy_source = {
        type = "electric",
        energy_usage = "140kW",
        usage_priority = "secondary-input",
        drain = "100W",
        emissions_per_minute = 1
}
accumulatorFurnace.minable.result = "furnace-mk1"

accumulatorFurnace.animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
          tint = {r=1,g=0,b=0},
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png",
            tint = {r=1,g=0,b=0},
            priority = "extra-high",
            width = 151,
            height = 146,
            frame_count = 1,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
          tint = {r=1,g=0,b=0},
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      }
    }
accumulatorFurnace.working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
          tint = {r=1,g=0,b=0},
          priority = "extra-high",
          line_length = 8,
          width = 20,
          height = 49,
          frame_count = 48,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(-0.5, 5.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
            tint = {r=1,g=0,b=0},
            priority = "extra-high",
            line_length = 8,
            width = 41,
            height = 100,
            frame_count = 48,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(-0.75, 5.5),
            scale = 0.5
          }
        },
        light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
      }
    }
accumulatorFurnace.water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 45),
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
                        name = "furnace-mk1",
                        icon = "__furnacesPlus__/graphics/icons/stone-furnace.png",
                        icon_size = 64, icon_mipmaps = 4,
                        subgroup = "smelting-machine",
                        place_result = "furnace-mk1",
                        stack_size = 5,
                        order = "z+"
                },
                {
                        type = "recipe",
                        enabled = false,
                        energy_required = 30,
                        name = "furnace-mk1",
                        icon_size = 64, icon_mipmaps = 4,
                        ingredients = {{"stone", 25}, {"electronic-circuit", 20}, {"iron-stick", 20}},
                        result = "furnace-mk1"
                },
                {
                        type = "technology",
                        enabled = true,
                        name = "furnace-mk1",
                        icon_size = 64,
                        icon = "__furnacesPlus__/graphics/icons/stone-furnace.png",
                        prerequisites = {"electronics", "automation", "logistics"},
                        effects =
                        {
                          {
                            type = "unlock-recipe",
                            recipe = "furnace-mk1"
                          }
                        },
                        unit =
                        {
                          count = 250,
                          ingredients = {{"automation-science-pack", 1}},
                          time = 60
                        },
                        order = "a-b-a"
                }
        }
)