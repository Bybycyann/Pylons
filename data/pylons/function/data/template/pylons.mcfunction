data modify storage pylons:main template.pylons set value {\
  "type": "none",\
  "display": {\
    "common": {\
      "transformation": {\
        "translation": [0.0f,0.5f,0.0f]\
      }\
    }\
  },\
  "Tags": ["Pylon"],\
  "light_level": 5,\
  "interaction_box": {\
    "height": 2.0,\
    "width": 1.0,\
    "offset_x": 0.0,\
    "offset_y": 0.0,\
    "offset_z": 0.0,\
    "response": true\
  },\
  "event": {\
    "place": {\
      "name": "pylons",\
      "path": "pylons/spawn/main"\
    },\
    "left_click": {\
      "name": "pylons",\
      "path": "break/0"\
    },\
    "right_click": {\
      "name": "pylons",\
      "path": "dialog/0"\
    },\
    "clock": {\
      "name": "pylons",\
      "path": "pylons/clock",\
      "time": 40\
    },\
    "const": {\
      "place": {\
        "sound": "block.beacon.power_select",\
        "color": 9434531\
      },\
      "left_click": {\
        "loot_table": "pylons:pylon",\
        "break3_status_score":"NatureCraft.status",\
        "break3_type":2,\
        "break3_damage": 4,\
        "sound": "block.beacon.deactivate",\
        "statusbar_data":{"value":{"type":"score","score":"NatureCraft.status","name":"@n[type=minecraft:item_display,tag=NatureCraft.root,tag=NatureCraft.target]"},"max":10,"display":{"type":1,"color":"#48e0ff","duration":41,"height":2}}\
      },\
      "clock": {\
        "statusbar_data":{"value":{"type":"score","score":"NatureCraft.status","name":"@n[type=minecraft:item_display,tag=NatureCraft.root,tag=NatureCraft.target]"},"max":10,"display":{"type":1,"color":"#48e0ff","duration":41,"height":2}}\
      }\
    }\
  }\
}