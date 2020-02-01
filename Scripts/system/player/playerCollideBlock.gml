///collision with blocks
//vertical
vFree = place_free(x, y + vspeed + gravity) || place_free(x + hspeed, y + vspeed + gravity)
if (!vFree) {
    if (vspeed <= 0) {
        move_contact_solid(90, abs(vspeed + gravity))
        if (global.reverse) {
            canVJump = false
        }
    }
    if (vspeed > 0) {
        move_contact_solid(270, abs(vspeed + gravity))
        if (!global.reverse) {
            canVJump = false
        }
    }
    vspeed = 0
    gravity = 0
}
//horizontal
hFree = place_free(x + hspeed, y)
if(!hFree && vFree)
    hFree = place_free(x + hspeed, y + vspeed + gravity)
if (!hFree) {
    if (hspeed <= 0) {
        move_contact_solid(180, abs(hspeed))
    }
    if (hspeed > 0) {
        move_contact_solid(0, abs(hspeed))
    }
    hspeed = 0;
}

hvFree = place_free(x + hspeed, y + vspeed + gravity)
if (!hvFree) {
    hspeed = 0
}
if (pf != noone && vspeed < 0) {
    y += pf.vspeed
}