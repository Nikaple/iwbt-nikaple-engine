// ns_send_instance_direct(mapId)
// Send a command to sync an instance directly with mapId
// WARNING: this script will not destroy the ds_map for you,
// you must DESTROY THE MAP BY YOURSELF!

if (!ns_is_in_game() || noSync) exit

var mapId, instanceMap, map, i, size, current;
mapId = argument0
syncId = string(id - 100000)

debug('Syncing instance... instance name:', object_get_name(id.object_index))

map = cmd_add_map(global.__cmd_sync, syncId)

size = ds_map_size(mapId)
current = ds_map_find_first(mapId)

for (i = 0; i < size; i += 1) {
    ds_map_add(map, current, ds_map_find_value(mapId, current))
    current = ds_map_find_next(mapId, current)
}

