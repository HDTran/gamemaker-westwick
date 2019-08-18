///move(hspd, vspd)
var hspd = argument0;
var vspd = argument1;

// horizontal movement
if (!place_meeting(x + hspd, y, o_solid)) {
    x += hspd;
}

// vertical movement
if (!place_meeting(x, y + vspd, o_solid)) {
    y += vspd;
}

// return true if able to move, otherwise false
return x != xprevious || y != yprevious;
