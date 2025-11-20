import json
import zipfile

with open("info.json", mode="r", encoding="utf-8") as info_f:
    mod_data = json.load(info_f)

version = mod_data["version"]

with zipfile.ZipFile(
    f"furnacesPlus_{version}.zip", "w", zipfile.ZIP_DEFLATED, True, 9
) as zf:
    # Mod info, and pic.
    zf.write("thumbnail.png", "furnacesPlus/thumbnail.png")
    zf.write("info.json", "furnacesPlus/info.json")
    zf.write("changelog.txt", "furnacesPlus/changelog.txt")
    # Main Mod files.
    zf.write("data.lua", "furnacesPlus/data.lua")
    zf.write("data-final-fixes.lua", "furnacesPlus/data-final-fixes.lua")
    zf.write("control.lua", "furnacesPlus/control.lua")
    # Sounds
    zf.write("sounds/mk4-furnace.ogg", "furnacesPlus/sounds/mk4-furnace.ogg")
    zf.write("sounds/atomic-furnace.ogg", "furnacesPlus/sounds/atomic-furnace.ogg")
    # Prototypes
    zf.write("prototypes/furnace-mk1.lua", "furnacesPlus/prototypes/furnace-mk1.lua")
    zf.write("prototypes/furnace-mk2.lua", "furnacesPlus/prototypes/furnace-mk2.lua")
    zf.write("prototypes/furnace-mk3.lua", "furnacesPlus/prototypes/furnace-mk3.lua")
    zf.write("prototypes/furnace-mk4.lua", "furnacesPlus/prototypes/furnace-mk4.lua")
    zf.write("prototypes/atomic-furnace.lua", "furnacesPlus/prototypes/atomic-furnace.lua")
    # Locale
    zf.write("locale/en/config.cfg", "furnacesPlus/locale/en/config.cfg")
    # Graphics
    #   Icons
    zf.write(
        "graphics/icons/electric-furnace.png",
        "furnacesPlus/graphics/icons/electric-furnace.png",
    )
    zf.write(
        "graphics/icons/mk4-furnace-icon.png",
        "furnacesPlus/graphics/icons/mk4-furnace-icon.png",
    )
    zf.write(
        "graphics/icons/atomic-furnace-icon.png",
        "furnacesPlus/graphics/icons/atomic-furnace-icon.png",
    )
    zf.write(
        "graphics/icons/steel-furnace.png",
        "furnacesPlus/graphics/icons/steel-furnace.png",
    )
    zf.write(
        "graphics/icons/stone-furnace.png",
        "furnacesPlus/graphics/icons/stone-furnace.png",
    )
    #   Other
    zf.write(
        "graphics/mk4-furnace/mk4-furnace-anim.png",
        "furnacesPlus/graphics/mk4-furnace/mk4-furnace-anim.png",
    )
    zf.write(
        "graphics/mk4-furnace/mk4-furnace.png",
        "furnacesPlus/graphics/mk4-furnace/mk4-furnace.png",
    )
    zf.write(
        "graphics/atomic-furnace/atomic-furnace-anim.png",
        "furnacesPlus/graphics/atomic-furnace/atomic-furnace-anim.png",
    )
    zf.write(
        "graphics/atomic-furnace/atomic-furnace.png",
        "furnacesPlus/graphics/atomic-furnace/atomic-furnace.png",
    )
