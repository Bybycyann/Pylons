# 动态构建Dialog
$dialog show @s \
{\
    "type": "minecraft:multi_action",\
    "after_action": "none",\
    "columns": 3,\
    "pause": false,\
    "title": "",\
    "body": {\
        "type": "minecraft:item",\
        "item": {\
            "id": "minecraft:paper",\
            "components": {"minecraft:item_model": "pylons:vanilla/forest/item"}\
        },\
        "show_tooltip": false,\
        "description": {"translate": "item.pylons.pylon","fallback": "传送晶塔"}\
    },\
    "actions": $(output),\
    "exit_action": {\
        "label": {"translate": "gui.back","fallback": "返回"},\
        "width": 300,\
        "action": {\
            "type": "minecraft:run_command",\
            "command": "trigger Pylons.trigger set 1"\
        }\
    }\
}