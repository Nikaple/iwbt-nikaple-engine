// ns_send_event_map(eventName, mapId) 
// Send a command to sync an event with mapId
if (!ns_is_in_game()) exit

var kvCount, i, map, eventMap, eventName, mapId, size, current;
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


