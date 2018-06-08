/// @desc Initializes the nikaple server
/// This is a rewritten gm8-compatible network api based on patchwire,
/// for more information, visit https://github.com/gm-core/patchwire-gm

// remote ip
global.__ip = global.ip_address;
// remote tcp port
global.__tcp_port = global.tcp_port;
// remote udp port
global.__udp_port = global.udp_port;


// Below is the script for system initialization, DO NOT MODIFY if you are not expert.

// load http dll
http_dll_init(global.plugin_directory + 'http_dll_2_3.dll', true, true);
// for sending & reading tcp packets
global.bufId = buffer_create();
// for reading udp packets
global.udpBufId = buffer_create();
// for sending udp packets
global.udpSyncBufId = buffer_create();
// load json library
json_init();
// init global variables
global.__player_id = '';
global.__player_name = '';
global.__player_index = 0;
global.__is_host = false;
global.__current_lobby_id = 0;
global.__current_lobby_name = '';
global.__current_lobby_players = ds_list_create();
global.__current_game_id = 0;

// save data used in save_sync event
global.__player_auto_save = 0;
global.__save_id = -1;
global.__save_room = -1;
global.__save_x = -1;
global.__save_y = -1;
global.__save_xs = 0;
global.__save_rev = -1;

// used in warpSync
global.__sync_position = false;

// make ds_list id start from 1, so that if(id) return true when first list is created
global.__FUCK_GAMEMAKER_LIST__ = ds_list_create();

// init handlers, max scripts = 2048
var handlerPrefix, handlerPrefixLength, eventPrefix, eventPrefixLength, i;
// internal event handler map
global.__ns_cmd_handler_map = ds_map_create();
global.__ns_event_handler_map = ds_map_create();
global.__ns_wait_handler_map = ds_map_create();

cmdPrefix = 'handler_cmd_';
cmdPrefixLength = string_length(cmdPrefix);
eventPrefix = 'handler_event_';
eventPrefixLength = string_length(eventPrefix);
waitPrefix = 'handler_wait_';
waitPrefixLength = string_length(waitPrefix);

for (i = 0; i < 2048; i += 1) {
    if (script_exists(i)) {
        _ns_add_handler(global.__ns_cmd_handler_map, i, cmdPrefix);
        _ns_add_handler(global.__ns_event_handler_map, i, eventPrefix);
        _ns_add_handler(global.__ns_wait_handler_map, i, waitPrefix);
    }
}

