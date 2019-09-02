/// view_approach(x, y, width, height, speed, zoom_speed)
var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;
var spd = argument4;
var zoom_spd = argument5;

// move towards the target
x = lerp(x, xx, spd);
y = lerp(y, yy, spd);

// scale the view
view_wview[0] = lerp(view_wview[0], width, zoom_spd);
view_hview[0] = lerp(view_hview[0], height, zoom_spd);
