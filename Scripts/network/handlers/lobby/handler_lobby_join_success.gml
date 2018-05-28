if (room != rLobby && room != rRoom) exit

var data, _id, guest, players, size, i;
data = argument0
_id = json_pick(data, 'id')
guest = json_pick(data, 'guest')
players = ds_list_clone(json_pick(data, 'players'))

// If we are in room and a player comes in, update lobby members
if (room == rRoom && ns_get_lobby_id() == _id) {
    global.__current_lobby_players = players
}

if (room == rLobby) {
    // If we want to join a room, update information
    if (guest == ns_get_player_name()) {
        global.__is_host = false
        global.__current_lobby_id = json_pick(data, 'id')
        global.__current_lobby_name = json_pick(data, 'name')
        global.__current_lobby_players = players
        room_goto(rRoom)
    } else {
        // If somebody else want to join a room, update lobby rooms information
        if (objLobbyController.fetched) {
            var lobbies, size, i, lobby, players;
            lobbies = objLobbyController.lobbies
            size = ds_list_size(lobbies)
            for (i = 0; i < size; i += 1) {
                lobby = ds_list_find_value(lobbies, i)
                if (json_pick(lobby, 'id') == _id) {
                    ds_map_replace(lobby, 'players', players)
                    objLobbyController.alarm[0] = 1
                    break
                }
            }
        }
    }
}

