/// battle_hit_state
battle_set_sprite(HIT, 0);

// move the player based on the position in the animation
var input = (image_index/image_number)*pi; // gives us a single sin wave that goes from initial position to end to back
x = xstart-sin(input)*32*image_xscale; // show more knockback based on scale of image (we don't use it here, but just incase)

// check for death
if (x-xstart > 24 && stats_object.stats[? "health"] <= 0) {
    state = battle_death_state;
}

// return to the wait state
if (animation_end()) {
    state = battle_wait_state;
    x = xstart;
}
