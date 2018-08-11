// ns_send_event_direct(eventName, mapId, shouldSyncInTournamentMode) 
// Send a command to sync an event directly with mapId
// this script will destroy the ds_map for you,
// no need to destroy the map by yourself

if (!ns_is_in_game() || noSync || (global.tournament_mode && !argument2)) exit

var eventName, mapId, eventMap, map, i, size, current;
eventName = argument0
mapId = argument1

debug('Adding event... event name:', argument0)

if (ds_map_exists(global.__cmd_sync, 'e')) {
    eventMap = json_pick(global.__cmd_sync, 'e')
} else {
    eventMap = cmd_add_map(global.__cmd_sync, 'e')
}

ds_map_add(eventMap, eventName, mapId)
_cmd_mark_as_ds(eventMap, eventName)

