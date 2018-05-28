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
global.clear = 0
global.difficulty = 1

// leave current lobby
if (ns_is_in_lobby()) {
    ns_leave_lobby(true)
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

