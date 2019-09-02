/// battle_approach_state()
var targetx = xstart+BATTLE_SPACE*image_xscale; // image_xscale determines if player or enemy
var spd = 16;

// move to target
x = approach(x, targetx, spd);
if (x == targetx) {
    state = battle_attack_state;
}
