wx = x
wy = y
wxpre = xprevious
wypre = yprevious
wSpeed = vspeed

if (place_meeting(x, y, obj_wall)) {
    x = xprevious
    y = yprevious
    move_contact_object(point_direction(xprevious, yprevious, wx, wy), -1, obj_wall)
    vspeed = 0
    gravity = 0
    if (place_meeting(x, y + yflag, obj_wall)) {
        if (!place_meeting(wx, y - 3 * yflag, obj_wall)) {
            x = wx
            y -= 3 * yflag
            move_contact_object(180 + 90 * yflag, 10, obj_wall)
        }
    }
} else {
    if (place_meeting(xprevious + image_xscale, y + yflag * 3, obj_wall)) {
        move_contact_object(180 + 90 * yflag, 10, obj_wall)
    }
}
if (!place_meeting(x, y + yflag, obj_wall)) {
    gravity = yflag * grav
    if (!place_meeting(x, y - yflag, obj_wall)) {
        y = wy
        if (place_free(x, y) == false) {
            y = yprevious
            move_contact_object(point_direction(x, y, x, wy), -1, obj_wall)
        }
        vspeed = wSpeed
    } else {
        if (!place_free(wx, y)) {
            y += yflag * 1
        }
    }
} else {
    if (place_meeting(wx, wy, obj_wall)) {
        if (!place_meeting(x, wy, obj_wall)) {
            y = wy
            gravity = yflag * grav
            vspeed = wSpeed
        }
    }
}
if (place_meeting(x, y + yflag, obj_wall) && vspeed == 0) {
    curJumps = 1
}

