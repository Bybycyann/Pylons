# ```
# 数据包: Pylons-beta1.0
# 适用版本: 1.21.6+
# 前置依赖: NatureCraft
# 类型: 冒险、实用
# 作者: 七柏(桂茗)
# 许可证: MIT License
# Bilibili: https://space.bilibili.com/405830542?spm_id_from=333.1007.0.0
# ```

# 数据注册
function #pylons:nc_reg

# 游戏规则
## 发送命令反馈	(调试时更改此项为 true)
gamerule sendCommandFeedback false

# 玩家进入游戏监听
    scoreboard objectives add Pylons.leave_game minecraft.custom:minecraft.leave_game

# Trigger
    # 通用
    scoreboard objectives add Pylons.trigger trigger
    # TP
    scoreboard objectives add Pylons.trigger_tp trigger
    # DEL
    scoreboard objectives add Pylons.trigger_del trigger
    # STAR
    scoreboard objectives add Pylons.trigger_star trigger

# 回收站
execute unless data storage pylons:main bin run data modify storage pylons:main bin set value []