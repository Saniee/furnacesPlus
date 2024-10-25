--furnace-mk4.lua
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

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
        resistances =
        {
          {
            type = "fire",
            percent = 80
          }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        module_specification =
        {
          module_slots = 4,
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
          fuel_categories = {"rocket"},
          emissions_per_minute = {pollution = 0.2},
          effectivity = 4,
          smoke =
          {
            {
              name = "smoke",
              deviation = {0.1, 0.1},
              frequency = 5,
              position = {0.0, -1.2},
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
        graphics_set =
        {
          
        }
        fast_replaceable_group = "furnace",
        water_reflection =
        {
          pictures =
          {
            filename = "__furnacesPlus__/graphics/mk4-furnace/mk4-furnace.png",
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
        ingredients = {{type="item", name="steel-plate", amount=240}, {type="item", name="processing-unit", amount=90}, {type="item", name="stone-brick", amount=120}, {type="item", name="electric-engine-unit", amount=40}, {type="item", name="low-density-structure", amount=50}},
        results = {{type="item", name="furnace-mk4", amount=1}}
      },
      {
        type = "technology",
        enabled = true,
        name = "furnace-mk4",
        icon_size = 64,
        icon = "__furnacesPlus__/graphics/icons/mk4-furnace-icon.png",
        prerequisites = {"logistic-science-pack", "chemical-science-pack", "furnace-mk3", "advanced-circuit", "electric-engine", "utility-science-pack", "rocket-fuel"},
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "furnace-mk4"
          }
        },
        unit =
        {
          count = 1200,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"utility-science-pack", 1}},
          time = 65
        },
        order = "a-b-a"
    }
})

data:extend({{type = "fuel-category", name = "rocket"}})
data.raw.item["rocket-fuel"].fuel_category = "rocket"