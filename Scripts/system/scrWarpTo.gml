// scrWarpTo(roomTo, num, mode, width, height, clearSpeed, screens, kind)
var roomTo, _num, mode, width, height, clearSpeed, kind, screens, marginLeft, marginRight, marginTop, marginBottom, marginMin;
roomTo = argument0
_num = argument1
mode = argument2
width = argument3
height = argument4
clearSpeed = argument5
screens = argument6
kind = argument7

width = set_default(width, 1)
height = set_default(height, 1)

player.alarm[0] = 0

transition_kind = kind
if (roomTo != -1) {
    if (room_exists(roomTo)) {
        room_goto(roomTo)
    } else if (!global.enable_production_mode) {
        i18n_show_error(
            '不能传送到不存在的房间，房间序号：' +
                string(roomTo) +
                '。' +
                error_info(),
            'Cannot warp to an unexisting room, roomTo: ' +
                string(roomTo) +
                '. ' +
                error_info()
        )
    }
} else {
    with (objPlayerStart) {
        if (num == _num) {
            player.x = x
            player.y = y
        }
    }
    exit
}

if (is_string(mode)) {
    if (mode == 'border') {
        // detect the direction of warping
        marginLeft = abs(x)
        marginRight = abs(x - room_width)
        marginTop = abs(y)
        marginBottom = abs(y - room_height)
        marginMin = min(marginLeft, marginRight, marginTop, marginBottom)

        // when warping vertically(warpY!=0)
        // the player's x coordinate shouldn't move
        // (as respect to the current view)
        // if you want to warp from (2100,608) in room1
        // to (500,0) in room2
        // the creation code should be:
        // roomTo = room2;
        // warpY = 0;
        // screens = -2;
        switch (marginMin) {
            case marginLeft:
                player.x = width * global.game_room_width
                player.y += screens * height * global.game_room_height
                break
            case marginRight:
                player.x = 0
                player.y += screens * height * global.game_room_height
                break
            case marginTop:
                player.y = height * global.game_room_height
                player.x += screens * width * global.game_room_width
                break
            case marginBottom:
                player.y = 0
                player.x += screens * width * global.game_room_width
                break
        }
        // prevent the bug that player could move into block
        with (player) {
            if (onBlock) {
                y -= yflag
            }
        }
        return 0;
    }
}

global.__player_start_num = _num
global.__player_maxJumps = player.maxJumps
global.__player_maxSpeed = player.maxSpeed
global.__player_grav = player.grav
global.__player_shootInterval = player.shootInterval
destroy_if_exists(player)

