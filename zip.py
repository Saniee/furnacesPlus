import json
import zipfile
from pathlib import Path

ROOT = Path(__file__).parent

INCLUDE_FILES = ["info.json", "changelog.txt", "thumbnail.png", "LICENSE", "README.md"]
INCLUDE_DIRS = ["graphics", "locale", "prototypes", "sounds"]

with open(ROOT / "info.json", encoding="utf-8") as info_f:
    info = json.load(info_f)

name, version = info["name"], info["version"]
folder = f"{name}_{version}"  # Factorio requires the top-level folder to be name or name_version

files = [ROOT / f for f in INCLUDE_FILES]
files += sorted(ROOT.glob("*.lua"))
for d in INCLUDE_DIRS:
    files += sorted(p for p in (ROOT / d).rglob("*") if p.is_file())

missing = [f for f in files if not f.is_file()]
if missing:
    raise SystemExit(f"Missing files: {', '.join(str(m.relative_to(ROOT)) for m in missing)}")

out = ROOT / f"{folder}.zip"
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED, compresslevel=9) as zf:
    for f in files:
        zf.write(f, f"{folder}/{f.relative_to(ROOT).as_posix()}")

print(f"Wrote {out.name} ({len(files)} files)")
