/// @desc Applies the handler function to the given command data as received from the server.
/// @param {String} CommandType
/// @param {ds_map} CommandData
/// Note: This is for internal use in Patchwire

var handler, handlerList, i, cmdName, data;
cmdName = argument0
data = argument1
debug('received command: ', cmdName)

if (ds_map_exists(global.__ns_cmd_handler_map, cmdName)) {
    handler = json_pick(global.__ns_cmd_handler_map, cmdName)
    script_execute(handler, data)
} else {
    debug('Handler of command', cmdName, 'does not exist!')
}
