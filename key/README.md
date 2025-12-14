## Changelog
### v7.1 [September 25, 2025]
Bug fixes
- Shears stayed in chests when an empty chest is unlocked.
- Colored skulker boxes get replaced with normal ones

### v7 [August 2, 2025]
Fixed bugs when breaking locked containers with items in it.<br>
1.20.5 - 1.20.6: Also added advancement to show recipe in recipe book like newer versions already have

### v6.2 1.21.4 [December 28, 2024]
Added new setting item model.<br>
Normally this pack uses custom model data to set the texture of the key.<br>
If you check this setting, the texture will be defined trough item model. This way it wont get broken if other packs use custom model data for the warped fungus on a stick, but all players must install the resource pack since item model doesnt support a fallback texture.

Update your key with the following command while holding a key in your mainhand for custom mode data<br>
`/execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{keylock:1b}}}}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:custom_model_data":{strings:["cmdg_key"]}}}`


or this command for item model<br>
`/execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{keylock:1b}}}}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"keylock:key"}}`

### v6.1 [May 22, 2024]
Keys from 1.20.4 and older versions now work again with 1.20.5 and newer versions.<br>
This means all Keys crafted in version 1.20.5 or 1.20.6 with the data pack version 6 wont work anymore.

### v6 [April 28, 2024]
Keys from other versions of the Data Pack won't work with v6! Locked Chests can be unlocked as before.

Updated to 1.20.5<br>
Improved storage of items of locked containers<br>
Fixed duplication bug with pistons<br>
Redstone cant open locked Doors, Trapdoors and Fence Gates anymore<br>
Added more Key damage settings<br>
Changed Admin Key Command

### v5 [January 5, 2024]
Major overwork for 1.20.2+<br>
Added support for all containers, doors, trapdoors and fence gates<br>
Allow the use of the Key name as password<br>
Allow to set the maximum of locked blocks per player and in total in the world<br>
Different behaviours for locked chests added

Improved items saving: Items are no longer stored in entities, but in the command storage. This prevents the loss of all items when all entities are killed.

And what do you think of the new primary / "pack logo" image? Feedback appreciated

### v4 [May 27, 2023]
Durability works now as intended and doesn't stop at 94 Points

### v3.4 [April 9, 2022]
Fixed bug with addon

### v3.3 [September 1, 2021]
Fixed Bug with Admin Key duping items inside chest when unlocked

### v3.2 [July 8, 2021]
Compatibility with the new Observer Addon<br>
No Key damage while in creative mode

### v3.1 1.17 [July 8, 2021]
optimizations (use of /item modify)

### v2 1.17 [June 8, 2021]
Used new Marker entity.

Warning: Unlock all your Chest before updating the Datapack.

### vx.6 [April 14, 2021]
Fixed Item duplication bug with tnt

### vx.5 [December 18, 2020]
Fixed Bug with Bedrock at Y0 in the End under the chest.

### v2.2 / v1.4 [December 3, 2020]
Show the Name of the Chest owner when you try to unlock a chest even if he is offline.<br>
If you put items in a locked chest with a hopper the items will drop when you unlock the chest.<br>
Added #compatible setting to fix datapack when another datapack overwrites the green_shulker_box loot table.

### v2.1 / v1.3 [November 21, 2020]
Added Admin Key<br>
Show Name of Chest Owner if he is online when you try to unlock a chest

### v2 1.16 [June 23, 2020]
Added Tool Damage when locking Chest<br>
Added Option to disable Tool Damage when lockinh Chest

### v1.2 [June 15, 2020]
Fixed crafting

### v1.1 [May 25, 2020]
If chest breaks it will be replaced with correct facing<br>
bug fixing

### v1 [April 9, 2020]

## Technical Changes
| Version ID | Changes | Files | 
| ------------- | ------------- | ------------- |
| 143 | Updated durability<br>Replace NBT with components<br>Recipe in book | advancement/recipe<br>advancement/click_door<br>advancement/click_trapgate<br>functions/container/lock/player<br>functions/container/unlock/auto_check<br>functions/container/action<br>functions/container/remove_drop<br>-function/craft/* <br>functions/door/auto_door/detect<br>functions/door/lock/setup<br>functions/door/lock/store<br>functions/door/action<br>functions/durability/* <br>functions/trapgate/auto_door/detect<br>functions/trapgate/lock/setup<br>functions/trapgate/lock/store<br>functions/trapgate/action<br>functions/password_check<br>item_modifiers/* <br>+predicates/durability<br>-predicates/durability/*<br>predicates/repair<br>predicates/usage<br>recipes/recipe |
| 145 | Renamed Folders | |
| 147 | Custom Durability | function/admin_key<br>function/tick<br>recipe/recipe<br>function/container/unlock/unlock<br>function/container/replace_broken<br>function/container/lock/store |
| 149 | New custom model data and item model | function/admin_key<br>recipe/recipe |
| 150 | New text components<br>Setblock strict for doors<br>Fixed console error with display blocks | function/container/lock/message<br>function/container/unlock/message<br>function/container/action<br>function/container/replace_broken<br>function/container/summon_display<br>function/door/lock/message<br>function/door/open/close<br>function/door/unlock/message<br>function/door/action<br>function/door/replace_broken<br>function/settings/*<br>function/trapgate/lock/message<br>function/trapgate/open/close<br>function/trapgate/unlock/message<br>function/trapgate/action<br>function/trapgate/replace_broken<br>function/admin_key<br>recipe/recipe |