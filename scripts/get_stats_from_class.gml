/// get_stats_from_class(class_string)
var class_string = argument0;

// create and copy the stats
var stats = json_decode(json_encode(o_data.classes[? class_string])); // clone properly, otherwise inner arrays and objects would be reference copies instead of full copies

// set the max health and health
stats[? "maxhealth"] = calculate_health(level, stats[? "health"]);
stats[? "health"] = calculate_health(level, stats[? "maxhealth"]);

// set experience
if (object_index == o_player_stats) {
    stats[? "maxexperience"] = level * 10;
}

// return the stats
return stats;
