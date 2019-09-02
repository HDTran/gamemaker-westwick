/// format_text(text_array, width, font)
var text = argument0;
var width = argument1;
var font = argument2;

// set the font
draw_set_font(font);

// get the number of pages
var array_size = array_length_1d(text);
var last_space = 0; // keep track of last space encountered to jump back to if we need to carriage return due to width

// loop through the pages
for (var i = 0; i < array_size; i++) {
    // set the count to 0, current position in text
    var count = 0;
    
    // loop through the characters
    var char = string_char_at(text[i], count);
    while (char != "") {
        var str = string_copy(text[i], 1, count);
        var str_width = string_width(str);
        
        // update the last space
        if (char == " ") {
            last_space = count;
        }
        
        // check the width
        if (str_width > width) {
            // note: if you use "@ i", it is an accessor for the reference of actual array to be able to modify
            text[@ i] = string_delete(text[i], last_space, 1);
        
            // only works in GMS 1, "#" is a carriage return -- GMS2 is different
            text[@ i] = string_insert("#", text[i], last_space); 
        }
        
        // increment count
        count++;
        char = string_char_at(text[@ i], count);
    }
}

return text; // just incase even though we were using accessor
