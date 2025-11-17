--furnace-mk5.lua
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
        module_slots = 6,
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 1,
        crafting_speed = 24,
        energy_usage = "50MW",
        source_inventory_size = 1,
        energy_source =
        {
          type = "burner",
          fuel_categories = {"nuclear"},
          fuel_inventory_size = 1,
          burnt_inventory_size = 1,
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
        graphics_set = {
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
        category = "smelting",
        energy_required = 120,
        ingredients = {
          {type = "item", name = "steel-plate", amount = 500},
          {type = "item", name = "processing-unit", amount = 150},
          {type = "item", name = "stone-brick", amount = 200},
          {type = "item", name = "electric-engine-unit", amount = 100},
          {type = "item", name = "low-density-structure", amount = 10},
          {type = "item", name = "uranium-238", amount = 20},
          {type = "item", name = "uranium-235", amount = 1},
        },
        results = {{type = "item", name = "furnace-mk5", amount = 1}}
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
