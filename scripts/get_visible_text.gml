/// get_visible_text(pause_time)
var pause_time = argument0;
var new_string = string_copy(text[text_page], 1, text_count); // variables in dialog object

if (string_length(new_string) > string_length(text_visible)) {
    // check for the last key
    var last_char = string_char_at(new_string, text_count);
    
    // check for a pause, we also don't want to infinitely pause at end
    if (is_in_array(last_char, array(".", ",", "!", "?")) && text_count < string_length(text[text_page])) {
        alarm[0] = pause_time;
    }
    
    // set the visible text
    text_visible = new_string;
}
