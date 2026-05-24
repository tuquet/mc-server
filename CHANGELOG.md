# Changelog

## [2026-05-24]

### Added
- **Windows Start Shortcut**: Created `Start Minecraft Server.lnk` with a Minecraft icon (extracted from `TLauncher.exe`) to launch the server easily from File Explorer.

### Changed / Configured
- **Java 25 Startup Fix (`run.bat`)**: Updated the startup script to use the Java 25 JRE bundled within Minecraft's local AppData (`%APPDATA%\.minecraft\runtime\java-runtime-epsilon`) since modern PaperMC requires Java 25.
- **Console `/restart` Command Support (`spigot.yml`)**: Updated `restart-script` from `./start.sh` to `run.bat` to allow the `/restart` command to work natively on Windows systems.
- **Save Game Migration (`world/`)**: Imported singleplayer save `100dayjamehugo` as the server's active world.
- **Player Data & Inventory Sync**:
  - Mapped player data, stats, and achievements for user **`tedlogin`** from their singleplayer UUID (`4ce74d60-4abe-11ee-a9a3-f02f74958d22`) to the server's offline UUID (`133a3513-5c8e-3df8-bebd-43b03c71e6d2`).
  - Restored Level 45 XP, inventory, coordinates, stats, and advancement progress safely.

### Reverted (Optimizations Rollback)
- **Network & Lag Optimizations**: Rolled back the temporary network optimizations (`view-distance`, `simulation-distance`, `entity-tracking-range`) to their original default Minecraft values as requested, preserving the native vanilla experience. (A backup of both configurations is saved in the `backup/` folder).
