import zipfile

version = "0.1.2"

with zipfile.ZipFile(f"furnacesPlus_{version}.zip", "w", zipfile.ZIP_LZMA, True, 9) as zf:
    # Mod info, and pic.
    zf.write("thumbnail.png", "thumbnail.png")
    zf.write("info.json", "info.json")
    zf.write("changelog.txt", "changelog.txt")
    # Main Mod files.
    zf.write("data.lua", "data.lua")
    zf.write("data-final-fixes.lua", "data-final-fixes.lua")
    zf.write("control.lua", "control.lua")
    # Sounds
    zf.write("sounds/mk4-furnace.ogg", "sounds/mk4-furnace.ogg")
    zf.write("sounds/mk5-furnace.ogg", "sounds/mk5-furnace.ogg")
    # Prototypes
    zf.write("prototypes/furnace-mk1.lua", "prototypes/furnace-mk1.lua")
    zf.write("prototypes/furnace-mk2.lua", "prototypes/furnace-mk2.lua")
    zf.write("prototypes/furnace-mk3.lua", "prototypes/furnace-mk3.lua")
    zf.write("prototypes/furnace-mk4.lua", "prototypes/furnace-mk4.lua")
    zf.write("prototypes/furnace-mk5.lua", "prototypes/furnace-mk5.lua")
    # Locale
    zf.write("locale/en/config.cfg", "locale/en/config.cfg")
    # Graphics
    #   Icons
    zf.write("graphics/icons/electric-furnace.png", "graphics/icons/electric-furnace.png")
    zf.write("graphics/icons/mk4-furnace-icon.png", "graphics/icons/mk4-furnace-icon.png")
    zf.write("graphics/icons/mk5-furnace-icon.png", "graphics/icons/mk5-furnace-icon.png")
    zf.write("graphics/icons/steel-furnace.png", "graphics/icons/steel-furnace.png")
    zf.write("graphics/icons/stone-furnace.png", "graphics/icons/stone-furnace.png")
    #   Other
    zf.write("graphics/mk4-furnace/mk4-furnace-anim.png", "graphics/mk4-furnace/mk4-furnace-anim.png")
    zf.write("graphics/mk4-furnace/mk4-furnace.png", "graphics/mk4-furnace/mk4-furnace.png")
    zf.write("graphics/mk5-furnace/mk5-furnace-anim.png", "graphics/mk5-furnace/mk5-furnace-anim.png")
    zf.write("graphics/mk5-furnace/mk5-furnace.png", "graphics/mk5-furnace/mk5-furnace.png")
