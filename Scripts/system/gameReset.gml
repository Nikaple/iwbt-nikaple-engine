// reset the game, re-initialize the global variables
for (i = 1; i <= global.boss_number; i += 1) {
    global.boss[i] = 0
}
for (i = 1; i <= global.item_number; i += 1) {
    global.item[i] = 0
}
global.frozen = 0
global.frozen2 = 0
global.savenum = 1
global.reverse = 0
view_angle[0] = 0
global.clear = 0
global.difficulty = 1

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

// used in udp traffic
global.__sync_time = 0;

curMusic = BGM_Null

// leave current lobby
if (ns_is_in_lobby()) {
    ns_leave_lobby(true)
}
if (ns_is_in_game()) {
    ns_logout()
}

global.__player_index = 0
global.__is_host = false
global.__current_lobby_id = 0
global.__current_game_id = 0
ds_list_empty(global.__current_lobby_players)

if (instance_exists(objOnlinePlayers)) {
    var info, size, cur, i;
    info = objOnlinePlayers.dsPlayerInfo
    if (info) {
        size = ds_map_size(info)
        cur = ds_map_find_first(info)
        for (i = 0; i < size; i += 1) {
            ds_map_delete(info, cur)
        }
    }
}
room_goto(rTitle)

