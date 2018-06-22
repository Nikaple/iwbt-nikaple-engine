// ns_send_wait_direct(waitName, flag, mapId)
// Send a command to sync an wait directly with mapId
// WARNING: this script will not destroy the ds_map for you,
// you must DESTROY THE MAP BY YOURSELF!

if (!ns_is_in_game() || noSync || global.tournament_mode) exit

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

ds_map_add(waitMap, 'wait', mapId)
_cmd_mark_as_ds(waitMap, 'wait')
ds_map_add(mapId, 'name', waitName)
ds_map_add(mapId, 'flag', flag)

