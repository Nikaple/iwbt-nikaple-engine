var fromName, data, roomTo, _x, _y, xs, ys, h, v, sync, info, fakePlayer;
fromName = argument0
data = argument1

roomTo = json_pick(data, 'roomTo')
_x = json_pick(data, 'x')
_y = json_pick(data, 'y')
xs = json_pick(data, 'xs')
ys = json_pick(data, 'ys')
sync = json_pick(data, 'sync')

h = 0
v = 0

// sync back
player.eventSync = true

if (sync) {
    global.__save_id = _id
    global.__save_room = roomTo
    global.__save_x = _x
    global.__save_y = _y
    global.__save_xs = xs
    global.__player_auto_save = true
    world.alarm[0] = 1
    world.resetSync = false
}

if (ds_map_exists(objOnlinePlayers.dsPlayerInfo, fromName)) {
    info = json_pick(objOnlinePlayers.dsPlayerInfo, fromName)
    debug('User', fromName, ' is warping to room', room_get_name(roomTo))
    with (objOnlinePlayers) {
        shouldSync = true
        fakePlayer = variable_local_get(fromName)
        fakePlayer._room = roomTo
        fakePlayer.x = _x
        fakePlayer.y = _y
        fakePlayer.h = h
        fakePlayer.v = v
        fakePlayer.image_xscale = xs
        fakePlayer.image_yscale = ys
        fakePlayer.dead = false
    }
    ds_map_replace(info, 'room', roomTo)
    ds_map_replace(info, 'x', _x)
    ds_map_replace(info, 'y', _y)
    ds_map_replace(info, 'h', h)
    ds_map_replace(info, 'v', v)
    ds_map_replace(info, 'xs', xs)
    ds_map_replace(info, 'ys', ys)
}

// clear fakePlayer speed
if (objOnlinePlayers.dsPlayerInfo) {
    var size, i, info, _player;
    info = objOnlinePlayers.dsPlayerInfo
    size = ds_map_size(info)
    _player = ds_map_find_first(info)
    for (i = 0; i < size; i += 1) {
        with (objOnlinePlayers) {
            fakePlayer = variable_local_get(fromName)
            fakePlayer.h = 0
            fakePlayer.v = 0
        }
        _player = ds_map_find_next(info, _player)
    }
}

