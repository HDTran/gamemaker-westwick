/// battle_return_state();
var targetx = xstart;
var spd = 12;
battle_set_sprite(RETURN, 0);

// calculate the image speed, animation will complete one loop in movement
var frames = get_frames(targetx, xstart+BATTLE_SPACE*image_xscale, spd); // our start and enemy's position
image_speed = get_image_speed_from_frames(frames, image_number);

x = approach(x, targetx, spd);
if (x == targetx) {
    state = battle_idle_state;
    o_battle.play = true;
}
