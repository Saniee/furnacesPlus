--furnace-t1.lua

local accumulatorFurnace = table.deepcopy(data.raw["furnace"]["stone-furnace"])

accumulatorFurnace.name = "furnace-mk1"
accumulatorFurnace.icons = {
        {
          icon = accumulatorFurnace.icon,
          tint = {r=255, g=127, b=127}
        },
}
accumulatorFurnace.crafting_speed = 2
accumulatorFurnace.energy_source = {
        type = "electric",
        energy_usage = "140kW",
        usage_priority = "secondary-input",
        drain = "100W",
        emissions_per_minute = { pollution = 1 }
}
accumulatorFurnace.minable.result = "furnace-mk1"

accumulatorFurnace.graphics_set = {
        animation = {
          layers = {
            {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
              height = 146,
              tint = {r=255, g=127, b=127},
              priority = "extra-high",
              scale = 0.5,
              shift = {
                -0.0078125,
                0.1875
              },
              width = 151
            },
            {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
              height = 74,
              tint = {r=255, g=127, b=127},
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.453125,
                0.40625
              },
              width = 164
            }
          }
        },
        water_reflection = {
          orientation_to_variation = false,
          pictures = {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
            height = 16,
            tint = {r=255, g=127, b=127},
            priority = "extra-high",
            scale = 5,
            shift = {
              0,
              1.09375
            },
            variation_count = 1,
            width = 16
          },
          rotate = false
        },
        working_visualisations = {
          {
            animation = {
              layers = {
                {
                  draw_as_glow = true,
                  filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
                  frame_count = 48,
                  height = 100,
                  tint = {r=255, g=127, b=127},
                  line_length = 8,
                  priority = "extra-high",
                  scale = 0.5,
                  shift = {
                    -0.0234375,
                    0.171875
                  },
                  width = 41
                },
                {
                  blend_mode = "additive",
                  draw_as_glow = true,
                  filename = "__base__/graphics/entity/stone-furnace/stone-furnace-light.png",
                  height = 144,
                  tint = {r=255, g=127, b=127},
                  repeat_count = 48,
                  scale = 0.5,
                  shift = {
                    0,
                    0.15625
                  },
                  width = 106
                }
              }
            },
            effect = "flicker",
            fadeout = true
          },
          {
            animation = {
              blend_mode = "additive",
              draw_as_light = true,
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-ground-light.png",
              height = 110,
              tint = {r=255, g=127, b=127},
              repeat_count = 48,
              scale = 0.5,
              shift = {
                -0.03125,
                1.375
              },
              width = 116
            },
            effect = "flicker",
            fadeout = true
          }
        }
}

data:extend({accumulatorFurnace})
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
                        category = "crafting",
                        icon_size = 64, icon_mipmaps = 4,
                        ingredients = {
                          {type = "item", name= "stone", amount = 25}, 
                          {type = "item", name= "electronic-circuit", amount = 20}, 
                          {type = "item", name= "iron-stick", amount = 20}
                        },
                        results = {{type = "item", name = "furnace-mk1", amount = 1}}
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
                          time = 20
                        },
                        order = "a-b-a"
                }
        }
)
