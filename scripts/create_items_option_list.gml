///create_items_option_list()
var options = ds_list_create();

/// Loop through the items
var items_list = o_player_stats.items;
for (var i=0; i<ds_list_size(items_list); i++) {
    var item = items_list[| i];
    var item_number = o_player_stats.item_number[| i];
    var option_text = "x"+string(item_number)+" "+item[? "name"]; // x5 Apple
    if (item_number > 1) option_text+="s"; // x5 Apples
    
    // Attempt to prevent the text from going past the ui frame
    if (string_length(option_text) > 13) {
        option_text = string_copy(option_text, 0, 10);
        option_text += "..."; // x5 Super M...
    }
    
    options[| i] = create_option(option_text, item_option_use_ui);
}
mark_option_list(options);
return options;
