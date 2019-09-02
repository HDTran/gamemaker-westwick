/// battle_view_idle_state()
target[? "x"] = room_width*3/4;
target[? "y"] = room_height/2;

// approach the view target
view_approach(target[? "x"], target[? "y"], 320, 180, spd/2, spd);
