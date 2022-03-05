# Summon number markers

summon marker ~ ~ ~ {data:{RandomNumber:1}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:2}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:3}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:4}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:5}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:6}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:7}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:8}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:9}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:10}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:11}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:12}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:13}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:14}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:15}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:16}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:17}, Tags:["NumberMarker"]}

# Randomly assign a new task to everyone who doesn't already have a persistent task

execute as @a[scores={tl_persistent=0}] store result score @s tl_persistent_calc run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

# Run the start function for the people with new tasks

execute as @a[scores={tl_persistent_calc=1,tl_persistent=0}] run function task_life:task_management/persistent_tasks/enchanting_table
execute as @a[scores={tl_persistent_calc=2,tl_persistent=0}] run function task_life:task_management/persistent_tasks/play_record
execute as @a[scores={tl_persistent_calc=3,tl_persistent=0}] run function task_life:task_management/persistent_tasks/crouch
execute as @a[scores={tl_persistent_calc=4,tl_persistent=0}] run function task_life:task_management/persistent_tasks/raid_win
execute as @a[scores={tl_persistent_calc=5,tl_persistent=0}] run function task_life:task_management/persistent_tasks/diamond
execute as @a[scores={tl_persistent_calc=6,tl_persistent=0}] run function task_life:task_management/persistent_tasks/obsidian
execute as @a[scores={tl_persistent_calc=7,tl_persistent=0}] run function task_life:task_management/persistent_tasks/netherite
execute as @a[scores={tl_persistent_calc=8,tl_persistent=0}] run function task_life:task_management/persistent_tasks/break_pick
execute as @a[scores={tl_persistent_calc=9,tl_persistent=0}] run function task_life:task_management/persistent_tasks/wither_skelly
execute as @a[scores={tl_persistent_calc=10,tl_persistent=0}] run function task_life:task_management/persistent_tasks/creepers
execute as @a[scores={tl_persistent_calc=11,tl_persistent=0}] run function task_life:task_management/persistent_tasks/potions
execute as @a[scores={tl_persistent_calc=12,tl_persistent=0}] run function task_life:task_management/persistent_tasks/return_to_sender
execute as @a[scores={tl_persistent_calc=13,tl_persistent=0}] run function task_life:task_management/persistent_tasks/zombie_doctor
execute as @a[scores={tl_persistent_calc=14,tl_persistent=0}] run function task_life:task_management/persistent_tasks/oh_shiny
execute as @a[scores={tl_persistent_calc=15,tl_persistent=0}] run function task_life:task_management/persistent_tasks/country_lode
execute as @a[scores={tl_persistent_calc=16,tl_persistent=0}] run function task_life:task_management/persistent_tasks/spooky_scary_skeleton
execute as @a[scores={tl_persistent_calc=17,tl_persistent=0}] run function task_life:task_management/persistent_tasks/furious_cocktail
execute as @a[scores={tl_persistent_calc=18,tl_persistent=0}] run function task_life:task_management/persistent_tasks/nine_lives

# Show title

title @a[scores={tl_persistent=0}] title {"text":"New difficult task:"}

# Set scoreboard to show players have task

scoreboard players set @a[scores={tl_persistent=0}] tl_persistent 1