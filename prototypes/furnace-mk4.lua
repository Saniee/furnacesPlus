--furnace-mk4.lua
local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend({
    {
        type = "furnace",
        name = "furnace-mk4",
        icon = "__furnacesPlus__/graphics/icons/mk4-furnace-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "furnace-mk4"},
        max_health = 350,
        corpse = "electric-furnace-remnants",
        dying_explosion = "electric-furnace-explosion",
        rotate = false,
        resistances =
        {
          {
            type = "fire",
            percent = 80
          }
        },
        collision_box = {{-1.8, -1.0}, {1.8, 1.0}},
        selection_box = {{-1.8, -1.0}, {1.8, 1.0}},
        damaged_trigger_effect = hit_effects.entity(),
        module_specification =
        {
          module_slots = 6,
          module_info_icon_shift = {0, 0.8}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 1,
        crafting_speed = 12,
        energy_usage = "1MW",
        source_inventory_size = 1,
        energy_source =
        {
          type = "burner",
          fuel_inventory_size = 1,
          fuel_category = "chemical",
          effectivity = 6,
          smoke =
          {
            {
              name = "smoke",
              deviation = {0.1, 0.1},
              frequency = 5,
              position = {0.0, 0.8},
              starting_vertical_speed = 0.08,
              starting_frame_deviation = 60
            }
          }

        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
          sound =
          {
            filename = "__furnacesPlus__/sounds/mk4-furnace.ogg",
            volume = 0.6
          },
          audible_distance_modifier = 0.6,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        animation =
        {
          layers =
          {
            {
              filename = "__furnacesPlus__/graphics/mk4-furnace/mk4-furnace-anim.png",
              priority = "high",
              width = 138,
              height = 138,
              frame_count = 16,
              line_length = 16
            }
          }
        },
        working_visualisations =
        {
          {
            animation =
            {
              filename = "__furnacesPlus__/graphics/mk4-furnace/mk4-furnace-anim.png",
              priority = "high",
              width = 138,
              height = 138,
              frame_count = 16,
              line_length = 16,
              animation_speed = 0.3
            },
            light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
          }
        },
        fast_replaceable_group = "furnace",
        water_reflection =
        {
          pictures =
          {
            filename = "__furnacesPlus__/graphics/mk4-furnace/mk4-furnace.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5,
          },
          rotate = false,
          orientation_to_variation = false
        }
      },
      {
        type = "item",
        name = "furnace-mk4",
        icon = "__furnacesPlus__/graphics/icons/mk4-furnace-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        order = "z+",
        place_result = "furnace-mk4",
        stack_size = 5
      },
      {
        type = "recipe",
        enabled = false,
        name = "furnace-mk4",
        energy_required = 120,
        ingredients = {{"steel-plate", 240}, {"processing-unit", 90}, {"stone-brick", 120}, {"electric-engine-unit", 40}, {"low-density-structure", 50}, {"rocket-fuel", 500}},
        result = "furnace-mk4"
      },
      {
        type = "technology",
        enabled = true,
        name = "furnace-mk4",
        icon_size = 64,
        icon = "__furnacesPlus__/graphics/icons/mk4-furnace-icon.png",
        prerequisites = {"logistic-science-pack", "chemical-science-pack", "furnace-mk3", "advanced-material-processing-2", "advanced-electronics-2", "electric-engine", "utility-science-pack", "low-density-structure", "rocket-fuel"},
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "furnace-mk4"
          }
        },
        unit =
        {
          count = 2000,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"utility-science-pack", 1}},
          time = 120
        },
        order = "a-b-a"
    }
})