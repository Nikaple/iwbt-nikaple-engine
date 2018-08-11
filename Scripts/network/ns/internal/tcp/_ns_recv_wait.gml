// ns_recv_wait(fromName, waitName, waitData)
var fromName, waitName, data, handler, fin;
fromName = argument0
waitName = argument1
data = argument2
debug('Syncing wait:', waitName, 'from player:', fromName)

if (ds_map_exists(global.__ns_wait_handler_map, waitName)) {
    handler = json_pick(global.__ns_wait_handler_map, waitName)
    fin = json_pick(data, 'fin')
    script_execute(handler, fromName, data, fin)
} else if (!global.enable_production_mode){
    show_error('Error in script `_ns_recv_wait`: Handler of wait `' + waitName + '` does not exist!', 0)
}

