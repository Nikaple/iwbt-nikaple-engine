var data;
data = argument0

global.__current_game_id = json_pick(data, 'gameId')
global.__player_index = json_pick(data, 'idx')
global.__player_list = _ns_decode_player_list(json_pick(data, 'players'))

debug(
    'You have joined game ' +
    string(ns_get_game_id()) +
    '! Your index is ' +
        string(ns_get_player_index())
)

// clear lobby data
global.__current_lobby_id = 0
global.__current_lobby_name = ''

if (debug_mode) {
    room_goto(rSelectStage)
} else {
    room_goto(rMenu)
}


