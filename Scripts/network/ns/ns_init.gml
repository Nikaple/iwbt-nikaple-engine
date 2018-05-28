/// @desc Initializes the nikaple server
/// This is a rewritten gm8-compatible network api based on patchwire,
/// for more information, visit https://github.com/gm-core/patchwire-gm

// globals
global.__online_mode = true
// sync player status every ? frame
global.maxSyncCycle = 15
global.minSyncCycle = 3
// remote

//global.__ip = '139.199.18.59'
// local docker
//global.__ip = '192.168.99.100'
// local dev
global.__ip = '127.0.0.1'
// remote tcp port
global.__tcp_port = 3738
// remote udp port
global.__udp_port = 3738

// debug settings
global.__debug_host_name = 'username'
global.__debug_host_pass = 'password'
global.__debug_guest_name = 'test'
global.__debug_guest_pass = 'test'

// Below is the script for system initialization, DO NOT MODIFY if you are not expert.

// load 39dll
dllinit(global.plugin_directory + '39dll.dll', true, true)
// load json
json_init()
// init global variables
global.__player_id = ''
global.__player_name = ''
global.__player_index = 0
global.__is_host = false
global.__current_lobby_id = 0
global.__current_lobby_name = ''
global.__current_lobby_players = ds_list_create()
global.__current_game_id = 0

// save data used in save_sync event
global.__player_auto_save = 0
global.__save_id = -1
global.__save_room = -1
global.__save_x = -1
global.__save_y = -1
global.__save_xs = 0

// used in warp
global.__sync_position = false

// make ds_list id start from 1, so that if(id) return true when first list is created
global.__FUCK_GAMEMAKER_LIST__ = ds_list_create()

// init handlers, max scripts = 2048
var handlerPrefix, prefixLength, i, scriptName, cmdName, eventName, instanceName, scriptNameLength;
// internal event handler map
global.__ns_event_handler_map = ds_map_create()
global.__ns_recv_event_map = ds_map_create()
global.__ns_recv_instance_map = ds_map_create()

handlerPrefix = 'handler_'
handlerPrefixLength = string_length(handlerPrefix)
eventPrefix = 'ns_recv_event_'
eventPrefixLength = string_length(eventPrefix)
instancePrefix = 'ns_recv_instance_'
instancePrefixLength = string_length(instancePrefix)

for (i = 0; i < 2048; i += 1) {
    if (script_exists(i)) {
        _ns_add_handler(global.__ns_event_handler_map, i, handlerPrefix)
        _ns_add_handler(global.__ns_recv_event_map, i, eventPrefix)
        _ns_add_handler(global.__ns_recv_instance_map, i, instancePrefix)
    }
}

