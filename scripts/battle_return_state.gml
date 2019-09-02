/// battle_return_state();
var targetx = xstart;
var spd = 12;

x = approach(x, targetx, spd);
if (x == targetx) {
    state = battle_idle_state;
    o_battle.play = true;
}
