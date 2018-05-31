// ns_recv_wait(fromName, waitName, waitData)
var fromName, waitName, data, handler;
fromName = argument0
waitName = argument1
data = argument2
debug('Syncing wait:', waitName, 'from player:', fromName)

if (ds_map_exists(global.__ns_wait_handler_map, waitName)) {
    handler = json_pick(global.__ns_wait_handler_map, waitName)
    script_execute(handler, fromName, data)
} else {
    show_error('Error in script `ns_recv_wait`: Handler of wait `' + waitName + '` does not exist!', 0)
}

