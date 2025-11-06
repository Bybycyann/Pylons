data modify storage pylons:vanilla model.forest set value {\
  "template": {\
    "name": "pylons:main",\
    "nbt": "pylons"\
  },\
  "model":{\
    "Tags":["pylons"],\
    "item_name": {"translate":"item.pylons.pylon","fallback":"传送晶塔","color":"green"},\
    "display": {\
      "item_model": "pylons:vanilla/forest/item",\
      "model": "pylons:vanilla/forest/0"\
    },\
    "event": {\
      "const": {\
        "place": {\
          "color":9434531\
        },\
      }\
    }\
  }\
}

function naturecraft:give {name:"pylons:vanilla","nbt":"forest",model:"pylons:vanilla/forest/item",count:1,type:0}