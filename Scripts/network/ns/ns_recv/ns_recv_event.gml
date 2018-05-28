// ns_recv_event(fromName, eventName, eventData)
var fromName, eventName, data, handler;
fromName = argument0
eventName = argument1
data = argument2
debug('Syncing event:', eventName, 'from player:', fromName)

if (ds_map_exists(global.__ns_recv_event_map, eventName)) {
    handler = json_pick(global.__ns_recv_event_map, eventName)
    script_execute(handler, fromName, data)
} else {
    show_error('Handler of event `' + eventName + '`does not exist!', 0)
}

