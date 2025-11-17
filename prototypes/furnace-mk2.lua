--furnace-t2.lua

local accumulatorFurnace = table.deepcopy(data.raw["furnace"]["steel-furnace"])

accumulatorFurnace.name = "furnace-mk2"
accumulatorFurnace.icons = {
    {
      icon = accumulatorFurnace.icon,
      tint = {r=255, g=190, b=127}
    },
}
accumulatorFurnace.crafting_speed = 4
accumulatorFurnace.energy_source = {
        type = "electric",
        energy_usage = "280KW",
        usage_priority = "secondary-input",
        drain = "200W",
        emissions_per_minute = { pollution = 2}
}

accumulatorFurnace.minable.result = "furnace-mk2"

-- tint = {r=255, g=190, b=127},
accumulatorFurnace.graphics_set = {
        animation = {
          layers = {
            {
              filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
              height = 174,
              tint = {r=255, g=190, b=127},
              priority = "high",
              scale = 0.5,
              shift = {
                -0.0390625,
                0.0625
              },
              width = 171
            },
            {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
              height = 85,
              tint = {r=255, g=190, b=127},
              priority = "high",
              scale = 0.5,
              shift = {
                1.2265625,
                0.3515625
              },
              width = 277
            }
          }
        },
        water_reflection = {
          orientation_to_variation = false,
          pictures = {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
            height = 24,
            tint = {r=255, g=190, b=127},
            priority = "extra-high",
            scale = 5,
            shift = {
              0,
              1.40625
            },
            variation_count = 1,
            width = 20
          },
          rotate = false
        },
        working_visualisations = {
          {
            animation = {
              draw_as_glow = true,
              filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
              frame_count = 48,
              height = 81,
              tint = {r=255, g=190, b=127},
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.0234375,
                0.1796875
              },
              width = 57
            },
            effect = "flicker",
            fadeout = true
          },
          {
            animation = {
              blend_mode = "additive",
              draw_as_glow = true,
              filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
              height = 43,
              tint = {r=255, g=190, b=127},
              priority = "high",
              shift = {
                0.03125,
                0.640625
              },
              width = 60
            },
            effect = "flicker",
            fadeout = true
          },
          {
            animation = {
              blend_mode = "additive",
              draw_as_glow = true,
              filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
              height = 150,
              tint = {r=255, g=190, b=127},
              line_length = 1,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                -0.15625
              },
              width = 128
            },
            effect = "flicker",
            fadeout = true
          },
          {
            animation = {
              blend_mode = "additive",
              draw_as_light = true,
              filename = "__base__/graphics/entity/steel-furnace/steel-furnace-ground-light.png",
              height = 126,
              tint = {r=255, g=190, b=127},
              line_length = 1,
              priority = "high",
              scale = 0.5,
              shift = {
                0.03125,
                1.5
              },
              width = 152
            },
            effect = "flicker",
            fadeout = true
          }
        }
      }


data:extend{accumulatorFurnace}
data:extend(
        {
                {
                        type = "item",
                        name = "furnace-mk2",
                        icon = "__furnacesPlus__/graphics/icons/steel-furnace.png",
                        icon_size = 64, icon_mipmaps = 4,
                        subgroup = "smelting-machine",
                        place_result = "furnace-mk2",
                        stack_size = 5,
                        order = "z+"
                },
                {
                        type = "recipe",
                        enabled = true,
                        energy_required = 60,
                        category = "smelting",
                        name = "furnace-mk2",
                        ingredients = {
                          {type = "item", name = "steel-plate", amount = 45}, 
                          {type = "item", name = "advanced-circuit", amount = 35}, 
                          {type = "item", name = "stone-brick", amount = 30}, 
                          {type = "item", name = "iron-stick", amount = 25}
                        },
                        results = {{type = "item", name = "furnace-mk2", amount = 1}}
                },
                {
                        type = "technology",
                        enabled = true,
                        name = "furnace-mk2",
                        icon_size = 64,
                        icon = "__furnacesPlus__/graphics/icons/steel-furnace.png",
                        prerequisites = {"logistic-science-pack", "furnace-mk1", "steel-processing", "advanced-material-processing", "advanced-circuit"},
                        effects =
                        {
                          {
                            type = "unlock-recipe",
                            recipe = "furnace-mk2"
                          }
                        },
                        unit =
                        {
                          count = 600,
                          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
                          time = 40
                        },
                        order = "a-b-a"
                }
        }
)
