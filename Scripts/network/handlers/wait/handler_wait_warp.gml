var fromName, data, _room, roomTo, IsAllPlayersInWarp, warpX, warpY, screens, kind, info, seed;
fromName = argument0
data = argument1
IsAllPlayersInWarp = argument2

_room = json_pick(data, 'room')
roomTo = json_pick(data, 'roomTo')
warpX = json_pick(data, 'warpX')
warpY = json_pick(data, 'warpY')
screens = json_pick(data, 'screens')
kind = json_pick(data, 'kind')
seed = json_pick(data, 'seed') 

if (ds_map_exists(objOnlinePlayers.dsPlayerInfo, fromName)) {
    info = json_pick(objOnlinePlayers.dsPlayerInfo, fromName)
    ds_map_replace(info, 'room', roomTo)
    with (objOnlinePlayers) {
        fakePlayer = variable_local_get(fromName)
        fakePlayer._room = roomTo
    }
}

if (IsAllPlayersInWarp && _room == room) {
    if (seed > 0) {
        random_set_seed(seed)
    }
    scrWarpRoom(roomTo, warpX, warpY, clearSpeed, screens, kind)
}

