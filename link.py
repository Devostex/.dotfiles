import json
from pathlib import Path
dotfiles = json.load(open("config.json"))
for file, path in dotfiles.items():
    path = Path.joinpath(Path.home(), path)
    file = Path.joinpath(Path.cwd(), file)

    if path.exists():
        Path.rename(path, str(path)+".bak")

    if path.is_symlink():
        Path.unlink(path)

    path.symlink_to(file)
