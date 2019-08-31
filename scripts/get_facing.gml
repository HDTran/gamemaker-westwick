///get_facing(direction)
var dir = argument0;

var facing = round(dir/90); // dir is 360
if (facing == 4) facing = RIGHT;

return facing;
