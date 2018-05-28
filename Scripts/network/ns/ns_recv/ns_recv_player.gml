// ns_recv_object_player(room, x, y, spr, h, v)
// sync other online players in game
var fromIdx, fromName, _room, _x, _y, spr, xs, ys, dsPlayerInfo, info, h, v, sprite;
fromIdx = argument0
fromName = ns_get_other_player_name(fromIdx)
_room = argument1
_x = argument2
_y = argument3
spr = argument4
h = argument5
v = argument6
reverse = argument7

if (global.__debug_raw_json) {
    sprite[IDLING] = "Idle"
    sprite[RUNNING] = "Run"
    sprite[FALLING] = "Fall"
    sprite[JUMPING] = "Jump"
    sprite[SLIDING] = "Slide"
    debug('rec. packet from:', fromName, 'room', _room, 'xy', _x, _y, 'rev ' + string(reverse), 'spr', sprite[spr], 'sp: ' + string(h) + ',' + string(v))
}

dsPlayerInfo = objOnlinePlayers.dsPlayerInfo
if (!dsPlayerInfo) exit;
objOnlinePlayers.shouldSync = true

if (!ds_map_exists(dsPlayerInfo, fromName)) {
    
    info = ds_map_init(
        6,
        'room', _room,
        'x', _x,
        'y', _y,
        'spr', spr,
        'xs', 1,
        'ys', 1
    )
    ds_map_append(
        info, 6,
        'xprev', _x,
        'yprev', _y,
        'h', h,
        'v', v,
        'reverse', reverse,
        'idx', fromIdx
    )
    ds_map_add(dsPlayerInfo, fromName, info)
} else {
    objOnlinePlayers.timer = 0
    info = json_pick(dsPlayerInfo, fromName)
    xprev = json_pick(info, 'x')
    yprev = json_pick(info, 'y')
    ds_map_replace(info, 'room', _room)
    ds_map_replace(info, 'xprev', xprev)
    ds_map_replace(info, 'yprev', yprev)
    ds_map_replace(info, 'x', _x)
    ds_map_replace(info, 'y', _y)
    ds_map_replace(info, 'spr', spr)
    ds_map_replace(info, 'h', h)
    ds_map_replace(info, 'v', v)
    ds_map_replace(info, 'reverse', reverse)
}
