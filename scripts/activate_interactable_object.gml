/// activate_interactable_object(xdir, ydir);
var xdir = argument0;
var ydir = argument1;

// is there an object?
var interactable = instance_place(x+xdir, y+ydir, o_interactable_parent);

// if we have input and there is an object
if (o_input.action && interactable != noone) {
    with (interactable) {
        event_user(ACTIVATE);
    }
}
