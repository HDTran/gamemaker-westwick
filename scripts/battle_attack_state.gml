/// battle_attack_state();
var foe = instance_place(x+32*image_xscale, y, o_battle_unit);
if (foe) {
    deal_damage(id, foe, chance(stats_object.stats[? "critical"]/100), 1);
}
