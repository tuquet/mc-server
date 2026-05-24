# Network Optimization Backup

This file acts as a backup for the high-performance network optimization parameters configured for this Minecraft Paper server to reduce upload bandwidth usage and prevent lag when streaming or downloading (e.g., YouTube) on the host network.

---

## 1. File: `server.properties`

Apply or restore these values in the `server.properties` file:

```properties
# Chunk rendering distance for players (exponential bandwidth reduction)
view-distance=7

# Active ticks/simulation distance for entities
simulation-distance=4
```

---

## 2. File: `spigot.yml`

Apply or restore these values in the `spigot.yml` file under `world-settings` -> `default` -> `entity-tracking-range`:

```yaml
    entity-tracking-range:
      players: 48
      animals: 24
      monsters: 32
      misc: 16
      display: 32
      other: 32
```

---

## How to Restore
1. Stop the server completely.
2. Open the respective configuration files in the root folder of the server.
3. Replace the target lines with the properties above.
4. Save the files and start the server again.
