// ns_send_instance_direct(mapId)
// Send a command to sync an instance directly with mapId
// WARNING: this script will not destroy the ds_map for you,
// you must DESTROY THE MAP BY YOURSELF!

if (!ns_is_in_game() || noSync || global.tournament_mode) exit

var mapId, instanceMap, map, i, size, current;
mapId = argument0
syncId = string(id - 100000)

debug('Syncing instance... instance name:', object_get_name(id.object_index))

ds_map_add(global.__cmd_sync, syncId, mapId)

_cmd_mark_as_ds(global.__cmd_sync, syncId)

