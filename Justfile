bin := "/usr/local/bin"
target := bin / "claudebox"

# List available recipes
default:
    @just --list

# Builds the installer
build:
    bash .builder/build.sh
    @echo "Built installer: dist/claudebox.run"

# Runs the installer
install: build
    dist/claudebox.run
    @echo "Installed: {{target}}"

# Remove the installed symlink
uninstall:
    rm -f {{target}}
    @echo "Removed: {{target}}"
