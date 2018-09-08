// ns_recv_event(fromName, eventName, eventData)
var fromName, eventName, data, handler;
fromName = argument0
eventName = argument1
data = argument2
debug('Syncing event:', eventName, 'from player:', fromName)

if (ds_map_exists(global.__ns_event_handler_map, eventName)) {
    handler = json_pick(global.__ns_event_handler_map, eventName)
    script_execute(handler, fromName, data)
} else if (!global.enable_production_mode) {
    i18n_show_error(
        '事件 ' + eventName + ' 的处理函数不存在！请增加 handler_event_' + eventName + ' 脚本。',
        'Error in script `_ns_recv_event`: Handler of event `' + eventName + '` does not exist!'
    )
}

