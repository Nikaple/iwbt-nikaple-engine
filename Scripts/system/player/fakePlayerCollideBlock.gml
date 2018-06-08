///collision with blocks
//horizontal
colH = place_meeting(x + hspeed, y, argument0)
if (colH) {
    if (hspeed <= 0) {
        move_contact_object(180, abs(hspeed), argument0)
    }
    if (hspeed > 0) {
        move_contact_object(0, abs(hspeed), argument0)
    }
    hspeed = 0
}
//vertical

colV = place_meeting(x, y + vspeed, argument0)
if (colV) {
    if (vspeed <= 0) {
        move_contact_object(90, abs(vspeed), argument0)
    }
    if (vspeed > 0) {
        move_contact_object(270, abs(vspeed), argument0)
    }
    vspeed = 0
    gravity = 0
}

colBoth = place_meeting(x + hspeed, y + vspeed, argument0) == true
if (colBoth) {
    hspeed = 0
}

