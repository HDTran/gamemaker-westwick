/// init_battle_unit(name, level, is_enemy, idle_speed, attack_speed, hit_speed, ranged_speed)
var name = argument0;
var level = argument1;
var is_enemy = argument2;
var idle_speed = argument3;
var attack_speed = argument4;
var hit_speed = argument5;
var ranged_speed = argument6;

// create the battle unit level
id.level = level; // id uses instance variable, can also use self

// set the stats object
stats_object = id; // if enemy
if (!is_enemy) stats_object = o_player_stats;

// set up the stats for the enemy
if (is_enemy) {
    stats = get_stats_from_class(name);
    draw_health = stats[? "health"];   
}

// set the image_xscale
image_xscale = 1 - is_enemy * 2; // 1 if player or -1 if enemy for flipping sprite

// set sprite array
sprite[IDLE] = asset_get_index("s_battle_" + name + "_idle");
sprite[APPROACH] = asset_get_index("s_battle_" + name + "_approach");
sprite[ATTACK] = asset_get_index("s_battle_" + name + "_attack");
sprite[RETURN] = asset_get_index("s_battle_" + name + "_return");
sprite[HIT] = asset_get_index("s_battle_" + name + "_hit");
sprite[RANGED] = asset_get_index("s_battle_" + name + "_ranged");

// set animation speed array
animation_speed[IDLE] = idle_speed;
animation_speed[APPROACH] = 0;
animation_speed[ATTACK] = attack_speed;
animation_speed[RETURN] = 0;
animation_speed[HIT] = hit_speed;
animation_speed[RANGED] = ranged_speed;

// set the sprite
image_speed = animation_speed[IDLE];
sprite_index = sprite[IDLE];