# Original Configuration Backup (Before Optimizations)

If the optimized network settings cause any issues or the gameplay experience is not good (e.g., view distance of 7 is too low or monsters render too close), you can use this reference to revert back to the original default Minecraft settings.

---

## 1. File: `server.properties`

Restore these original values:

```properties
view-distance=10
simulation-distance=10
```

---

## 2. File: `spigot.yml`

Restore these original values under `world-settings` -> `default` -> `entity-tracking-range`:

```yaml
    entity-tracking-range:
      players: 128
      animals: 96
      monsters: 96
      misc: 96
      display: 128
      other: 64
```

---

## How to Revert with Git (Instant)

Since the optimizations were committed, you can also revert the files back to their original state instantly using Git by running this command in PowerShell inside the project directory:

```powershell
git checkout efdc0bf server.properties spigot.yml
```
*(Note: `efdc0bf` is the exact commit ID before the optimizations were applied.)*
