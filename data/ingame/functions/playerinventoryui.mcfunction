execute unless data entity @s Inventory[{id:"minecraft:white_banner",Slot:9b,tag:{CustomModelData:1}}] run function ingame:surrender
#投降


item replace entity @s container.9 with minecraft:white_banner{display:{Name:"[{\"text\":\"我输了\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"在当前事件结束后投降\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},BlockEntityTag:{Base:15},CustomModelData:1} 1
