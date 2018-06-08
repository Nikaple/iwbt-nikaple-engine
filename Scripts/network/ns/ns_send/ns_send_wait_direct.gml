// ns_send_wait_direct(waitName, flag, mapId)
// Send a command to sync an wait directly with mapId
// WARNING: this script will not destroy the ds_map for you,
// you must DESTROY THE MAP BY YOURSELF!

if (!ns_is_in_game() || noSync) exit

var waitName, flag, mapId, waitMap, map, i, size, current;
waitName = argument0
flag = argument1
mapId = argument2

if (is_real(flag)) {
    if (flag == -1) {
        flag = id - 100000
    }
}

debug('Adding wait... wait name:', argument0)

if (ds_map_exists(global.__cmd_sync, 'e')) {
    waitMap = json_pick(global.__cmd_sync, 'e')
} else {
    waitMap = cmd_add_map(global.__cmd_sync, 'e')
}

map = cmd_add_map(waitMap, "wait")
ds_map_add(map, 'name', waitName)
ds_map_add(map, 'flag', flag)

size = ds_map_size(mapId)
current = ds_map_find_first(mapId)

for (i = 0; i < size; i += 1) {
    ds_map_add(map, current, ds_map_find_value(mapId, current))
    current = ds_map_find_next(mapId, current)
}

