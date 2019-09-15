/// action_option_use()
with (o_player_battle_unit) {
    // other = action use ui, other.parent = action list ui, other.parent.index = current action
    var action = stats_object.actions[| other.parent.index];
    if (action[? "name"] == "Defend") {
        script_execute(asset_get_index(action[? "action"]));
    } else {
        state = asset_get_index(action[? "action"]);
    }
}

// destroy the action list
with (parent) {
    instance_destroy();
}
