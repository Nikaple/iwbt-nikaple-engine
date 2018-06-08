var fromName, data, roomTo, _x, _y, xs, rev, h, v, sync, info, fakePlayer;
fromName = argument0
data = argument1

roomTo = json_pick(data, 'roomTo')
_x = json_pick(data, 'x')
_y = json_pick(data, 'y')
xs = json_pick(data, 'xs')
rev = json_pick(data, 'rev')
sync = json_pick(data, 'sync')

h = 0
v = 0

// sync back
player.eventSync = true

// clear emitter
with (bloodEmitter) {
    if (is_string(name)) {
        if (name == fromName) {
            instance_destroy()
        }
    }
}

// reset savePointWait
with (savePointWait) {
    image_index = 0
}

// auto sync other players
if (sync) {
    global.__save_id = _id
    global.__save_room = roomTo
    global.__save_x = _x
    global.__save_y = _y
    global.__save_xs = xs
    global.__save_rev = rev
    global.__player_auto_save = true
    global.__sync_position = false    
    world.alarm[0] = 1
    world.resetSync = false
}

// update fakePlayer status
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

