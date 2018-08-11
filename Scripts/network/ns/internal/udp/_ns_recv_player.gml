var fromIdx, fromName, buffer, _room, _x, _y, spr, xs, ys, h, v, tmp, reverse;
fromIdx = argument0
fromName = argument1
_room = argument2
buffer = argument3

// read data from buffer
_x = buffer_read_int16(buffer)
_y = buffer_read_int16(buffer)
tmp = buffer_read_int8(buffer)
spr = tmp >> 4
tmp = tmp & 15
reverse = tmp >> 2
h = (tmp & 3) - 1
v = buffer_read_int16(buffer) / 100

// raw debug message
if (global.__debug_udp_verbose_mode) {
    sprite[IDLING] = "Idle"
    sprite[RUNNING] = "Run"
    sprite[FALLING] = "Fall"
    sprite[JUMPING] = "Jump"
    sprite[SLIDING] = "Slide"
    debug('rec. packet from:', fromName, 'room', _room, 'xy', _x, _y, 'rev ' + string(reverse), 'spr', sprite[spr], 'sp: ' + string(h) + ',' + string(v))
}

// sync players
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
