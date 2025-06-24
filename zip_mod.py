import zipfile

version = "0.1.3"

with zipfile.ZipFile(f"furnacesPlus_{version}.zip", "w", zipfile.ZIP_LZMA, True, 9) as zf:
    # Mod info, and pic.
    zf.write("thumbnail.png", f"furnacesPlus_{version}/thumbnail.png")
    zf.write("info.json", f"furnacesPlus_{version}/info.json")
    zf.write("changelog.txt", f"furnacesPlus_{version}/changelog.txt")
    # Main Mod files.
    zf.write("data.lua", f"furnacesPlus_{version}/data.lua")
    zf.write("data-final-fixes.lua", f"furnacesPlus_{version}/data-final-fixes.lua")
    zf.write("control.lua", f"furnacesPlus_{version}/control.lua")
    # Sounds
    zf.write("sounds/mk4-furnace.ogg", f"furnacesPlus_{version}/sounds/mk4-furnace.ogg")
    zf.write("sounds/mk5-furnace.ogg", f"furnacesPlus_{version}/sounds/mk5-furnace.ogg")
    # Prototypes
    zf.write("prototypes/furnace-mk1.lua", f"furnacesPlus_{version}/prototypes/furnace-mk1.lua")
    zf.write("prototypes/furnace-mk2.lua", f"furnacesPlus_{version}/prototypes/furnace-mk2.lua")
    zf.write("prototypes/furnace-mk3.lua", f"furnacesPlus_{version}/prototypes/furnace-mk3.lua")
    zf.write("prototypes/furnace-mk4.lua", f"furnacesPlus_{version}/prototypes/furnace-mk4.lua")
    zf.write("prototypes/furnace-mk5.lua", f"furnacesPlus_{version}/prototypes/furnace-mk5.lua")
    # Locale
    zf.write("locale/en/config.cfg", f"furnacesPlus_{version}/locale/en/config.cfg")
    # Graphics
    #   Icons
    zf.write("graphics/icons/electric-furnace.png", f"furnacesPlus_{version}/graphics/icons/electric-furnace.png")
    zf.write("graphics/icons/mk4-furnace-icon.png", f"furnacesPlus_{version}/graphics/icons/mk4-furnace-icon.png")
    zf.write("graphics/icons/mk5-furnace-icon.png", f"furnacesPlus_{version}/graphics/icons/mk5-furnace-icon.png")
    zf.write("graphics/icons/steel-furnace.png", f"furnacesPlus_{version}/graphics/icons/steel-furnace.png")
    zf.write("graphics/icons/stone-furnace.png", f"furnacesPlus_{version}/graphics/icons/stone-furnace.png")
    #   Other
    zf.write("graphics/mk4-furnace/mk4-furnace-anim.png", f"furnacesPlus_{version}/graphics/mk4-furnace/mk4-furnace-anim.png")
    zf.write("graphics/mk4-furnace/mk4-furnace.png", f"furnacesPlus_{version}/graphics/mk4-furnace/mk4-furnace.png")
    zf.write("graphics/mk5-furnace/mk5-furnace-anim.png", f"furnacesPlus_{version}/graphics/mk5-furnace/mk5-furnace-anim.png")
    zf.write("graphics/mk5-furnace/mk5-furnace.png", f"furnacesPlus_{version}/graphics/mk5-furnace/mk5-furnace.png")
