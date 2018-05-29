// scrWarpRoom(roomTo, warpX, warpY, screens, kind)
var roomTo, warpX, warpY, clearSpeed, kind, screens, h, v;
roomTo = argument0
warpX = argument1
warpY = argument2
clearSpeed = argument3
screens = argument4
kind = argument5

transition_kind = kind
if (roomTo != -1) {
    if (room_exists(roomTo)) {
        room_goto(roomTo)
    } else {
        show_error(
            'Cannnot warp to an unexisting room. Object name: ' +
                object_get_name(id.object_index) +
                ', object id: ' +
                string(id) +
                ', current room: ' +
                room_get_name(room) +
                ', roomTo: ' +
                string(roomTo),
            0
        )
    }
}

if (warpX != 0 || warpY != 0) {
    h = player.h
    v = player.v

    if (!instance_exists(player)) {
        instance_create(warpX, warpY, player)
    }
    if (clearSpeed) {
        player.hspeed = h
        player.vspeed = v
    }
    //when warping vertically(warpY!=0)
    //the player's x coordinate shouldn't move
    //(as respect to the current view)
    //if you want to warp from (2100,608) in room1
    //to (500,0) in room2
    //the creation code should be:
    //roomTo = room2;
    //warpY = 0;
    //screens = -2;
    if (warpX != 0) {
        player.x = warpX + 17
    } else {
        player.x += screens * 800
    }
    //similar as travelling vertically
    if (warpY != 0) {
        player.y = warpY + 23
    } else {
        player.y += screens * 608
    }
} else {
    destroy_if_exists(player)
    destroy_if_exists(bow)
}

