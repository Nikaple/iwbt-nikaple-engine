/// @desc Reads through registered handlers and runs them if it finds a command match.
/// Note: Call this on a network management object in it's Networking event.

var netResponse, commandList, commandCount, thisCommand, thisCommandMap, i, command;
netResponse = argument0

if (ds_map_exists(netResponse, 'batch')) {
    commandList = json_pick(netResponse, 'cmds')
    commandCount = ds_list_size(commandList)
    for (i = 0; i < commandCount; i += 1) {
        thisCommandMap = ds_list_find_value(commandList, i)
        thisCommand = json_pick(thisCommandMap, 'cmd')
        debug('BATCH COMMAND', thisCommand, thisCommandMap)
        _ns_handle(thisCommand, thisCommandMap)
    }
} else {
    command = json_pick(netResponse, 'cmd')
    _ns_handle(command, netResponse)
}

json_destroy(netResponse)

