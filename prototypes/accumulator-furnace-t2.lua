--accumulator-furnace-t2.lua

local accumulatorFurnace = table.deepcopy(data.raw["furnace"]["steel-furnace"])

accumulatorFurnace.name = "accumulator-furnace-t2"
accumulatorFurnace.icons = {
    {
      icon = accumulatorFurnace.icon,
      tint = {r=1,g=0.5,b=0}
    },
}
accumulatorFurnace.crafting_speed = 4
accumulatorFurnace.energy_source = {
        type = "electric",
        energy_usage = "280KW",
        usage_priority = "secondary-input",
        drain = "200W",
        emissions_per_minute = 2
}

accumulatorFurnace.minable.result = "accumulator-furnace-t2"

accumulatorFurnace.animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
      tint = {r=1,g=0.5,b=0},
      priority = "high",
      width = 85,
      height = 87,
      frame_count = 1,
      shift = util.by_pixel(-1.5, 1.5),
      hr_version =
      {
        filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
        tint = {r=1,g=0.5,b=0},
        priority = "high",
        width = 171,
        height = 174,
        frame_count = 1,
        shift = util.by_pixel(-1.25, 2),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
      tint = {r=1,g=0.5,b=0},
      priority = "high",
      width = 139,
      height = 43,
      frame_count = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(39.5, 11.5),
      hr_version =
      {
        filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
        tint = {r=1,g=0.5,b=0},
        priority = "high",
        width = 277,
        height = 85,
        frame_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(39.25, 11.25),
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
      filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
      tint = {r=1,g=0.5,b=0},
      priority = "high",
      line_length = 8,
      width = 29,
      height = 40,
      frame_count = 48,
      direction_count = 1,
      shift = util.by_pixel(-0.5, 6),
      hr_version =
      {
        filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
        tint = {r=1,g=0.5,b=0},
        priority = "high",
        line_length = 8,
        width = 57,
        height = 81,
        frame_count = 48,
        direction_count = 1,
        shift = util.by_pixel(-0.75, 5.75),
        scale = 0.5
      }
    },
    light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
  },
  {
    north_position = {0.0, 0.0},
    east_position = {0.0, 0.0},
    south_position = {0.0, 0.0},
    west_position = {0.0, 0.0},
    effect = "flicker", -- changes alpha based on energy source light intensity
    animation =
    {
      filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
      tint = {r=1,g=0.5,b=0},
      priority = "high",
      width = 60,
      height = 43,
      frame_count = 1,
      shift = {0.03125, 0.640625},
      blend_mode = "additive"
    }
  },
  {
    north_position = {0.0, 0.0},
    east_position = {0.0, 0.0},
    south_position = {0.0, 0.0},
    west_position = {0.0, 0.0},
    effect = "flicker", -- changes alpha based on energy source light intensity
    animation =
    {
      filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
      tint = {r=1,g=0.5,b=0},
      priority = "high",
      line_length = 8,
      width = 64,
      height = 75,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(0, -4.5),
      blend_mode = "additive",
      hr_version =
      {
        filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-working.png",
        tint = {r=1,g=0.5,b=0},
        priority = "high",
        line_length = 8,
        width = 130,
        height = 149,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -4.25),
        blend_mode = "additive",
        scale = 0.5
      }
    }
  }
}
accumulatorFurnace.water_reflection =
{
  pictures =
  {
    filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
    tint = {r=1,g=0.5,b=0},
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
                        name = "accumulator-furnace-t2",
                        icon = "__furnacesPlus__/graphics/icons/steel-furnace.png",
                        icon_size = 64, icon_mipmaps = 4,
                        subgroup = "smelting-machine",
                        place_result = "accumulator-furnace-t2",
                        stack_size = 5,
                        order = "z+"
                },
                {
                        type = "recipe",
                        enabled = false,
                        energy_required = 60,
                        name = "accumulator-furnace-t2",
                        ingredients = {{"steel-plate", 45}, {"advanced-circuit", 35}, {"stone-brick", 30}, {"iron-stick", 25}},
                        result = "accumulator-furnace-t2"
                },
                {
                        type = "technology",
                        enabled = true,
                        name = "accumulator-furnace-t2",
                        icon_size = 64,
                        icon = "__furnacesPlus__/graphics/icons/steel-furnace.png",
                        prerequisites = {"logistic-science-pack", "accumulator-furnace-t1", "steel-processing", "advanced-material-processing", "advanced-electronics"},
                        effects =
                        {
                          {
                            type = "unlock-recipe",
                            recipe = "accumulator-furnace-t2"
                          }
                        },
                        unit =
                        {
                          count = 600,
                          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
                          time = 120
                        },
                        order = "a-b-a"
                }
        }
)