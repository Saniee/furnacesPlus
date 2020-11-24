--furnace-mk4.lua
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "furnace",
        name = "furnace-mk5",
        icon = "__furnacesPlus__/graphics/icons/mk5-furnace-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "furnace-mk5"},
        max_health = 350,
        corpse = "electric-furnace-remnants",
        dying_explosion = "electric-furnace-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 80
          }
        },
        collision_box = {{-2.0, -2.0}, {2.0, 2.0}},
        selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
        damaged_trigger_effect = hit_effects.entity(),
        module_specification =
        {
          module_slots = 0,
          module_info_icon_shift = {0, 0.8}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 1,
        crafting_speed = 24,
        energy_usage = "50MW",
        source_inventory_size = 1,
        energy_source =
        {
          type = "burner",
          fuel_inventory_size = 1,
          fuel_category = "nuclear",
          effectivity = 1,
          smoke =
          {
            {
              name = "smoke",
              deviation = {0.1, 0.1},
              frequency = 15,
              position = {-1.1, -1.2},
              starting_vertical_speed = 0.08,
              starting_frame_deviation = 60
            },
            {
                name = "smoke",
                deviation = {0.1, 0.1},
                frequency = 15,
                position = {0.9, -1.2},
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
            filename = "__furnacesPlus__/sounds/mk5-furnace.ogg",
            volume = 0.3
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
              filename = "__furnacesPlus__/graphics/mk5-furnace/mk5-furnace-anim.png",
              priority = "high",
              width = 146,
              height = 146,
              frame_count = 1,
              line_length = 1
            }
          }
        },
        working_visualisations =
        {
          {
            animation =
            {
              filename = "__furnacesPlus__/graphics/mk5-furnace/mk5-furnace-anim.png",
              priority = "high",
              width = 146,
              height = 146,
              frame_count = 16,
              line_length = 16,
              animation_speed = 0.1
            },
            light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
          }
        },
        fast_replaceable_group = "furnace",
        water_reflection =
        {
          pictures =
          {
            filename = "__furnacesPlus__/graphics/mk5-furnace/mk5-furnace.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5,
          }
        }
      },
      {
        type = "item",
        name = "furnace-mk5",
        icon = "__furnacesPlus__/graphics/icons/mk5-furnace-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        order = "z+",
        place_result = "furnace-mk5",
        stack_size = 5
      },
      {
        type = "recipe",
        enabled = false,
        name = "furnace-mk5",
        energy_required = 120,
        ingredients = {{"steel-plate", 500}, {"processing-unit", 150}, {"stone-brick", 200}, {"electric-engine-unit", 100}, {"low-density-structure", 10}, {"uranium-238", 20}, {"uranium-235", 1}},
        result = "furnace-mk5"
      },
      {
        type = "technology",
        enabled = true,
        name = "furnace-mk5",
        icon_size = 64,
        icon = "__furnacesPlus__/graphics/icons/mk5-furnace-icon.png",
        prerequisites = {"furnace-mk4", "electric-engine", "production-science-pack", "uranium-processing"},
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "furnace-mk5"
          }
        },
        unit =
        {
          count = 1800,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"utility-science-pack", 1}, {"production-science-pack", 1}},
          time = 80
        },
        order = "a-b-a"
    }
})