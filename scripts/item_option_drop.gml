///item_option_drop()

if (instance_exists(parent)) {
    with (parent) {
        // Make sure there are items in the list
        if (ds_list_size(o_player_stats.items) > 0) {
            // Remove the item
            o_player_stats.item_number[| index] --;
            if (o_player_stats.item_number[| index] <= 0) {
                ds_list_delete(o_player_stats.item_number, index);
                ds_list_delete(o_player_stats.items, index);
            }
            ds_list_destroy(options);
            
            // Update the items list
            options = create_items_option_list();
            index = min(index, ds_list_size(options)-1);
        }
    }
}
