///pickup_item(item, amount);
var item = argument0;
var amount = argument1;

// Make sure the player exists
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        // Is the item already in the list
        var item_index = ds_list_find_index(items, item);
        if (item_index != -1) {
            // Yes? Add to the amount
            item_number [| item_index] += amount;
        } else {
            // No? Add the item to the list
            ds_list_add(items, item);
            ds_list_add(item_number, amount);
        }
    }
}
