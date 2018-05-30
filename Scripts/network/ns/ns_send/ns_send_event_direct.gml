// ns_send_event_direct(eventName, mapId) 
// Send a command to sync an event directly with mapId
// WARNING: this script will not destroy the ds_map for you,
// you must DESTROY THE MAP BY YOURSELF!

if (!ns_is_in_game()) exit

var eventName, mapId, eventMap, map, i, size, current;
eventName = argument0
mapId = argument1

debug('Adding event... event name:', argument0)

if (ds_map_exists(global.__cmd_sync, 'e')) {
    eventMap = json_pick(global.__cmd_sync, 'e')
} else {
    eventMap = cmd_add_map(global.__cmd_sync, 'e')
}

map = cmd_add_map(eventMap, eventName)
size = ds_map_size(mapId)
current = ds_map_find_first(mapId)

for (i = 0; i < size; i += 1) {
    ds_map_add(map, current, ds_map_find_value(mapId, current))
    current = ds_map_find_next(mapId, current)
}


