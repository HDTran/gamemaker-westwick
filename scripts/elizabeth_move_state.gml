///elizabeth_move_state()
/// movement
var hspd = (o_input.right - o_input.left) * spd;
var vspd = (o_input.down - o_input.up) * spd;

// move
move(hspd, vspd);
