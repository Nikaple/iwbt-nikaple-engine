var fromName, data, _room, roomTo, IsAllPlayersInWarp, warpX, warpY, screens, kind, info, seed;
fromName = argument0
data = argument1

_room = json_pick(data, 'room')
roomTo = json_pick(data, 'roomTo')
warpX = json_pick(data, 'warpX')
warpY = json_pick(data, 'warpY')
screens = json_pick(data, 'screens')
kind = json_pick(data, 'kind')
seed = json_pick(data, 'seed')

if (_room != room) exit
if (ds_map_exists(objOnlinePlayers.dsPlayerInfo, fromName)) {
    info = ds_map_find_value(objOnlinePlayers.dsPlayerInfo, fromName)
    with (objOnlinePlayers) {
        fakePlayer = variable_local_get(fromName)
        fakePlayer._room = roomTo
    }
}

if (seed > 0) {
    random_set_seed(seed)
    scrWarpRoom(roomTo, warpX, warpY, clearSpeed, screens, kind)
}

