# Moreitems Table Datapack

本数据包为原版 Minecraft 中通常无法合成或难以获得的物品和方块添加了合成配方。

This datapack adds crafting recipes for various items and blocks that are typically uncraftable or hard to obtain in vanilla Minecraft.

## 支持物品列表 (Supported Items List)

以下是该数据包支持合成的物品和方块列表：

中文名称 (Chinese Name) | 英文名称 (English Name) | 物品 ID (Item ID) | 分类 (Category) |
| :--- | :--- | :--- | :--- |
| 基岩 | Bedrock | `minecraft:bedrock` | 方块 (Blocks) |
| 钟 | Bell | `minecraft:bell` | 方块 (Blocks) |
| 黑石 | Blackstone | `minecraft:blackstone` | 方块 (Blocks) |
| 蓝冰 | Blue Ice | `minecraft:blue_ice` | 方块 (Blocks) |
| 哭泣的黑曜石 | Crying Obsidian | `minecraft:crying_obsidian` | 方块 (Blocks) |
| 龙蛋 | Dragon Egg | `minecraft:dragon_egg` | 方块 (Blocks) |
| 冰 | Ice | `minecraft:ice` | 方块 (Blocks) |
| 浮冰 | Packed Ice | `minecraft:packed_ice` | 方块 (Blocks) |
| 海绵 | Sponge | `minecraft:sponge` | 方块 (Blocks) |
| 锁链头盔 | Chainmail Helmet | `minecraft:chainmail_helmet` | 装备 (Armor) |
| 锁链胸甲 | Chainmail Chestplate | `minecraft:chainmail_chestplate` | 装备 (Armorz) |
| 锁链护腿 | Chainmail Leggings | `minecraft:chainmail_leggings` | 装备 (Armor) |
| 锁链靴子 | Chainmail Boots | `minecraft:chainmail_boots` | 装备 (Armor) |
| 鞘翅 | Elytra | `minecraft:elytra` | 装备 (Armor) |
| 钻石马铠 | Diamond Horse Armor | `minecraft:diamond_horse_armor` | 马铠 (Horse Armor) |
| 金马铠 | Golden Horse Armor | `minecraft:golden_horse_armor` | 马铠 (Horse Armor) |
| 铁马铠 | Iron Horse Armor | `minecraft:iron_horse_armor` | 马铠 (Horse Armor) |
| 皮革马铠 | Leather Horse Armor | `minecraft:leather_horse_armor` | 马铠 (Horse Armor) |
| 附魔金苹果 | Enchanted Golden Apple | `minecraft:enchanted_golden_apple` | 杂项 (Misc) |
| 命名牌 | Name Tag | `minecraft:name_tag` | 杂项 (Misc) |
| 下界之心 | Nether Star | `minecraft:nether_star` | 杂项 (Misc) |
| 鞍 | Saddle | `minecraft:saddle` | 杂项 (Misc) |

## 物品堆叠修改 (Stack Size Modification)

本数据包修改了部分物品的堆叠数量限制。
This datapack modifies the stack size limit for certain items.

| 物品 (Item) | 原版堆叠 (Vanilla Stack) | 修改后堆叠 (Modified Stack) |
| :--- | :---: | :---: |
| 末影珍珠 (Ender Pearl) | 16 | 64 |
| 不死图腾 (Totem of Undying) | 1 | 64 |
| 蜂蜜瓶 (Honey Bottle) | 16 | 64 |
| 鸡蛋 (Egg) | 16 | 64 |
| 鞍 (Saddle) | 1 | 99 |
| 附魔金苹果 (Enchanted Golden Apple) | 64 | 99 |

> **⚠️ 说明**: 由于 Minecraft 原版协议限制，安全的最大堆叠数量为 **99**。

### 机制与转换 (Mechanism & Conversion)

本数据包通过修改物品组件来实现堆叠限制突破。我们采用了**全方位自动检测系统**，确保您无需繁琐操作即可享受新功能。

This datapack modifies item components to breakthrough stack limits. We use a **comprehensive automatic detection system** to ensure you can enjoy new features without tedious operations.

- **自动应用 (Auto-Apply)**:
    - **🎒 玩家背包 (Inventory)**: 只要物品进入您的背包（包括快捷栏和背包栏），数据包会瞬间自动将其转换为可堆叠版本。无论是捡起的、合成的还是从箱子拿出来的。
    - **👁️ 末影箱 (Ender Chest)**: 放入末影箱的物品也会被自动检测和修改。
    - **✋ 手持物品 (Held Items)**: 拿在手上的物品会实时被修改。
    - **⚔️ 打怪掉落 (Mob Drops)**: 怪物（如末影人）死亡掉落的物品在生成瞬间即被修改，确保刷怪塔效率。
    - **🛠️ 合成产物 (Crafting)**: 鞍和附魔金苹果等自定义合成配方已直接修改，合成出来即为 99 堆叠版，支持 Shift 批量合成。

### 自定义堆叠数量 (Customizing Stack Sizes)

如果您想为其他物品设置自定义堆叠数量，可以参考以下文件结构：

1.  **标签 (Tag)**: 在 `data/shirakomano/tags/item/` 目录下，您可以找到 `stack_to_64.json`, `stack_to_99.json` 等文件。将您想要的物品 ID 添加到对应的列表中。
2.  **修改器 (Modifier)**: 如果您需要一个新的堆叠数量（比如 16），您需要：
    - 复制 `data/shirakomano/item_modifier/set_stack_64.json` 为 `set_stack_16.json`，并将里面的数字改为 16。
    - 创建一个新的标签 `stack_to_16.json`，放入物品 ID。
    - 修改 `data/shirakomano/function/fix_slot.mcfunction` 添加对新标签的检测逻辑。

### 进阶：关于战利品表 (Advanced: Loot Tables)

您可能会注意到 `data/minecraft/loot_tables` 目录下也有对应的修改文件（如 `enderman.json`）。

- **是否必须？ (Is it mandatory?)**: **不是必须的 (No)**。
    - 只要您在上面的 **标签 (Tag)** 中添加了物品，数据包的自动检测功能就能处理 99% 的情况。
- **那为什么需要它？ (Why use it?)**: **为了刷怪塔效率 (For Mob Farm Efficiency)**。
    - 在高效的刷怪塔中，怪物死亡掉落物品后，可能会在极短的时间内（甚至同一刻）被漏斗吸走。
    - 如果没有修改战利品表，物品可能会以“旧版本”进入箱子，导致无法在箱子里自动堆叠。
    - 修改战利品表能保证物品**生成的瞬间**就是可堆叠的。
- **建议 (Recommendation)**:
    - 对于**大量刷取的怪物**（如末影人），建议保留战利品表修改。
    - 对于**普通物品**（如鞍、图腾），只修改标签完全足够。

- **注意事项 (Notes)**:
    - **旧物品处理 (Old Items)**: 如果箱子里有旧的物品，只需**放进背包**或**末影箱**，甚至**拿在手上**，它们就会自动升级。
    - **混合堆叠 (Merging)**: 带有 64 堆叠组件的新物品无法直接堆叠到旧物品上，请将旧物品也“过”一遍（放进背包）即可。
    - **刷怪塔 (Mob Farms)**: 刷怪塔产出的物品在掉落瞬间已被修改，因此在收集系统中可以正常堆叠。

## 安装说明 (Installation)

1. 下载数据包压缩文件。 (Download the datapack zip file.)
2. 将文件放入 Minecraft 存档的 `datapacks` 文件夹中。 (Place the file into the `datapacks` folder of your Minecraft world save.)
3. 在游戏中运行 `/reload` 命令或重启服务器。 (Run `/reload` command in-game or restart the server.)
