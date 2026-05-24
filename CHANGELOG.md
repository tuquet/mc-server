# Changelog

## [2026-05-24]

### Added
- **Windows Start Shortcut**: Created `Start Minecraft Server.lnk` with a Minecraft icon (extracted from `TLauncher.exe`) to launch the server easily from File Explorer.

### Changed / Configured
- **Java 25 Startup Fix (`run.bat`)**: Updated the startup script to use the Java 25 JRE bundled within Minecraft's local AppData (`%APPDATA%\.minecraft\runtime\java-runtime-epsilon`) since modern PaperMC requires Java 25.
- **Save Game Migration (`world/`)**: Imported singleplayer save `100dayjamehugo` as the server's active world.
- **Player Data & Inventory Sync**:
  - Mapped player data, stats, and achievements for user **`tedlogin`** from their singleplayer UUID (`4ce74d60-4abe-11ee-a9a3-f02f74958d22`) to the server's offline UUID (`133a3513-5c8e-3df8-bebd-43b03c71e6d2`).
  - Restored Level 45 XP, inventory, coordinates, stats, and advancement progress safely.

### Optimized (Network & Lag Reduction)
- **Map View Distance**: Reduced `view-distance` from `10` to `7` in `server.properties` (reduces network upload load by >50%).
- **World Simulation**: Reduced `simulation-distance` from `10` to `4` in `server.properties` to save CPU and network bandwidth.
- **Entity Tracking Range (`spigot.yml`)**: Lowered entity tracking ranges to save up to 70% of redundant packet transfers:
  - Players: 128 -> 48
  - Animals: 96 -> 24
  - Monsters: 96 -> 32
  - Misc: 96 -> 16
  - Display: 128 -> 32
  - Other: 64 -> 32
