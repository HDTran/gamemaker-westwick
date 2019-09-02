/// battle_approach_state()
var targetx = xstart+BATTLE_SPACE*image_xscale; // image_xscale determines if player or enemy
battle_set_sprite(APPROACH, 0);
var spd = min(28, 64/image_number);

// calculate the image speed, animation will complete one loop in movement
var frames = get_frames(targetx, xstart, spd);
image_speed = get_image_speed_from_frames(frames, image_number);

// move to target
x = approach(x, targetx, spd);
if (x == targetx) {
    state = battle_attack_state;
}
