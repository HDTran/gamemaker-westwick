/// move_intended_direction(hspd, vspd, distance)
// distance is how far we should check to move around corners
var hspd = argument0;
var vspd = argument1;
var dis = argument2;

// check for wall
var wall = instance_place(x+hspd, y+vspd, o_solid);

// make sure there is a wall
if (wall) {
    switch (facing) {
        case UP:
        case DOWN:
            if (hspd != 0) {
                exit; // no need to slide if we already have hspd
            }
            
            for (var i=0; i<dis; i+=spd) {
                // check moving to the right if space is there within distance
                if (!place_meeting(x+i, y+vspd, o_solid)) {
                    move(spd, 0, false);
                    break;
                }
                
                // check moving to the left if space is there within distance
                if (!place_meeting(x-i, y+vspd, o_solid)) {
                    move(-spd, 0, false);
                    break;
                }
            }
            break;
        case RIGHT:
        case LEFT:
            if (vspd != 0) {
                exit; // no need to slide if we already have vspd
            }
            
            for (var i=0; i<dis; i+=spd) {
                // check moving up if space is there within distance
                if (!place_meeting(x+hspd, y-i, o_solid)) {
                    move(0, -spd, false);
                    break;
                }
                
                // check moving down if space is there within distance
                if (!place_meeting(x+hspd, y+i, o_solid)) {
                    move(0, spd, false);
                    break;
                }
            }
            break;
    }
}
