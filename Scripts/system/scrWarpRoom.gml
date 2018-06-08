// scrWarpRoom(roomTo, warpX, warpY, clearSpeed, screens, kind)
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
    } else if (!global.production_mode) {
        show_error(
            'Cannnot warp to an unexisting room, roomTo: ' +
                string(roomTo) + '. ' + error_info(),
            0
        )
    }
}

if (warpX != 0 || warpY != 0) {
    player.canJump = false
    
    if (clearSpeed) {
        player.hspeed = 0
        player.vspeed = 0
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
    // prevent the bug that player could move into block
    with (player) {
        if (place_free(x, y - yflag)) {
            player.y -= yflag
        }
    }
} else {
    global.__player_maxJumps = player.maxJumps
    global.__player_maxSpeed = player.maxSpeed
    global.__player_grav = player.grav
    global.__player_shootInterval = player.shootInterval
    destroy_if_exists(player)
}

