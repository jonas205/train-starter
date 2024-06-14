.PHONY: run zip train-toggle lsp_reference

run: train-toggle
	~/.steam/bin/steam-runtime/run.sh ~/.local/share/Steam/steamapps/common/Factorio/bin/x64/factorio

zip:
	cd lua/train-toggle && fmtk package

train-toggle:
	rsync -arvz --delete lua/train-toggle ~/.factorio/mods

lsp_reference:
	fmtk luals-addon -d ~/.local/share/Steam/steamapps/common/Factorio/doc-html/runtime-api.json -p ~/.local/share/Steam/steamapps/common/Factorio/doc-html/prototype-api.json
