# Lobby

This behavior pack saves player coordinates as scoreboard values and allows players to teleport to where they last logged off. Upon joining the world each time, the player will spawn in the lobby. Setup an NPC to run the `initiate` function. 

## Installing the pack:

Download the current version on the [Releases Page](https://github.com/mittens4all/Lobby/releases)

Add the Lobby Pack add-on to your behavior packs on your world. Behavior packs may disable achievements, but editing the world with an NBT editor can re-enable achievements when uploading your world to a realm.

Re-enable achievements on either pc or mobile with the free NBT editor [Dovetail](https://github.com/Offroaders123/Dovetail)

## How to Use

Setup an NPC in your lobby.

NPC commands:
```yaml
execute as @initiator run function initiate
```

Optional titleraw to display coordinates in actionbar:
```yaml
titleraw @a[scores={lobby=0}] actionbar {"rawtext":[{"text":"§l§6X§r: "}, {"score":{"name":"*","objective":"x.axis"}}, {"text":" §l§6Y§r: "}, {"score":{"name":"*","objective":"y.axis"}}, {"text":" §l§6Z§r: "}, {"score":{"name":"*","objective":"z.axis"}}]}
```

To edit the lobby volume, edit the first two lines of the `coords_to_scores.mcfunction`:
```yaml
execute as @a unless entity @s[scores={lobby=1}] at @s if entity @s[x=0, z=0, dx=15, dz=15] run scoreboard players set @s lobby 1
execute as @a[scores={lobby=1}] at @s unless entity @s[x=0, z=0, dx=15, dz=15] run scoreboard players set @s lobby 0
```
The `[x=0, z=0, dx=15, dz=15]` is the current volume of the lobby area, all y levels are included. 
Players with a score of 1 are in the lobby.
Players with a score of 0 are not in the lobby.

To learn more about targeting players in a specific volume, read the documentation on the wiki:
[Understanding Selectors, Volume](https://wiki.bedrock.dev/commands/selectors#volume)

## Authors

- [@mittens4all](https://www.github.com/mittens4all) FP Recompiled & added Lobby Functions
- [Zhea Evyline](https://github.com/zheaEvyline/) FP Compilation & Documentation
- [Japanese Commanders Gathering](https://discord.gg/xFZH6QJfSB) Technique shared by: @akiponggg0119
- [Bedrock Commands Community Discord](https://discord.gg/SYstTYx5G5) Commands Compilation: @gobblecrow

## Documentation

- [Bedrock Commands Deveolper Packs](https://github.com/BedrockCommands/developer-packs/wiki/coordinate-to-scores)
- [On Player Join](https://wiki.bedrock.dev/commands/on-player-join)

```js
       _                              _     _       _ _  
      (_)  _     _                   | |   | |     | | | 
 ____  _ _| |_ _| |_ _____ ____   ___| |___| |_____| | | 
|    \| (_   _|_   _) ___ |  _ \ /___)_____  (____ | | | 
| | | | | | |_  | |_| ____| | | |___ |     | / ___ | | | 
|_|_|_|_|  \__)  \__)_____)_| |_(___/      |_\_____|\_)_)
                                                         
```
