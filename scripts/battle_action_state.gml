/// battle_action_state();
battle_set_sprite(IDLE, 0);

// unit taking action is drawn on top
depth = -1;

if (object_index == o_enemy_battle_unit) {
    state = battle_approach_state; // automatically attack if we're the enemy
}

if (o_input.action) {
    state = battle_approach_state;
}
