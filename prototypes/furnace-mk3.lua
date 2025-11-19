--furnace-t3.lua

local accumulatorFurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])

accumulatorFurnace.name = "furnace-mk3"
accumulatorFurnace.icons = {
    {
      icon = accumulatorFurnace.icon,
      tint = {r=127, g=127,b=255}
    },
}
accumulatorFurnace.crafting_speed = 8
accumulatorFurnace.module_slots = 4
accumulatorFurnace.energy_usage = "560kW"
accumulatorFurnace.energy_source.emissions_per_minute = { pollution = 0.5 }
accumulatorFurnace.energy_source.drain = "300W"

accumulatorFurnace.minable.result = "furnace-mk3"

-- tint = {r=127, g=127,b=255},
accumulatorFurnace.graphics_set = {
        animation = {
          layers = {
            {
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
              height = 219,
              tint = {r=127, g=127,b=255},
              priority = "high",
              scale = 0.5,
              shift = {
                0.0234375,
                0.1796875
              },
              width = 239
            },
            {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
              height = 171,
              tint = {r=127, g=127,b=255},
              priority = "high",
              scale = 0.5,
              shift = {
                0.3515625,
                0.2421875
              },
              width = 227
            }
          }
        },
        frozen_patch = {
          filename = "__space-age__/graphics/entity/frozen/electric-furnace/electric-furnace.png",
          height = 219,
          tint = {r=127, g=127,b=255},
          scale = 0.5,
          shift = {
            0.0234375,
            0.1796875
          },
          width = 239
        },
        water_reflection = {
          orientation_to_variation = false,
          pictures = {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            height = 24,
            priority = "extra-high",
            scale = 5,
            shift = {
              0.15625,
              1.25
            },
            variation_count = 1,
            width = 24
          },
          rotate = false
        },
        working_visualisations = {
          {
            animation = {
              layers = {
                {
                  animation_speed = 0.5,
                  draw_as_glow = true,
                  filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
                  frame_count = 12,
                  height = 56,
                  tint = {r=127, g=127,b=255},
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0546875,
                    1.0234375
                  },
                  width = 60
                },
                {
                  blend_mode = "additive",
                  draw_as_glow = true,
                  filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                  height = 202,
                  tint = {r=127, g=127,b=255},
                  repeat_count = 12,
                  scale = 0.5,
                  shift = {
                    0.03125,
                    0
                  },
                  width = 202
                }
              }
            },
            fadeout = true
          },
          {
            animation = {
              blend_mode = "additive",
              draw_as_light = true,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
              height = 124,
              tint = {r=127, g=127,b=255},
              scale = 0.5,
              shift = {
                0.09375,
                2.15625
              },
              width = 166
            },
            fadeout = true
          },
          {
            animation = {
              animation_speed = 0.5,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
              frame_count = 4,
              height = 25,
              tint = {r=127, g=127,b=255},
              priority = "high",
              scale = 0.5,
              shift = {
                -0.640625,
                -0.578125
              },
              width = 37
            }
          },
          {
            animation = {
              animation_speed = 0.5,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
              frame_count = 4,
              height = 15,
              tint = {r=127, g=127,b=255},
              priority = "high",
              scale = 0.5,
              shift = {
                0.109375,
                -1.1875
              },
              width = 23
            }
          }
        }
      }

data:extend({accumulatorFurnace})
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
                        category = "crafting",
                        energy_required = 120,
                        ingredients = {
                          {type = "item", name = "steel-plate", amount = 120}, 
                          {type = "item", name = "processing-unit", amount = 45}, 
                          {type = "item", name = "stone-brick", amount = 60}, 
                          {type = "item", name = "electric-engine-unit", amount = 20}
                        },
                        results = {{type = "item", name = "furnace-mk3", amount = 1}}
                },
                {
                        type = "technology",
                        enabled = true,
                        name = "furnace-mk3",
                        icon_size = 64,
                        icon = "__furnacesPlus__/graphics/icons/electric-furnace.png",
                        prerequisites = {"logistic-science-pack", "chemical-science-pack", "furnace-mk2", "advanced-material-processing-2", "electronics", "electric-engine"},
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
                          time = 50
                        },
                        order = "a-b-a"
                }
        }
)
