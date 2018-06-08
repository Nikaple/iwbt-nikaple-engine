// ns_send_event(eventName, kvCount, k1, v1, k2, v2, ...)
// Send a command to sync an event with key-value pairs
if (!ns_is_in_game() || noSync) exit

var kvCount, i, map, eventMap, eventName;
eventName = argument0
kvCount = argument1
debug('Syncing event... event name:', argument0)

error_kv('ns_send_event', kvCount)
if (kvCount < 7) {
    error_kv_zero('ns_send_event', kvCount, argument[kvCount * 2 + 2])
}

if (ds_map_exists(global.__cmd_sync, 'e')) {
    eventMap = json_pick(global.__cmd_sync, 'e')
} else {
    eventMap = cmd_add_map(global.__cmd_sync, 'e')
}

map = cmd_add_map(eventMap, eventName)

for (i = 0; i < kvCount; i += 1) {
    ds_map_add(map, argument[i * 2 + 2], argument[i * 2 + 3])
}

