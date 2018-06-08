if (room != rLobby) exit
if (ns_is_in_lobby()) exit

var data, players, lobbyId, lobbyName, needPass, map;
data = argument0
players = ds_list_clone(json_pick(data, 'players'))
lobbyId = json_pick(data, 'id')
lobbyName = json_pick(data, 'name')
needPass = json_pick(data, 'needPass')

// If the room is created by us, go into the room
if (ds_list_find_value(players, 0) == ns_get_player_name()) {
    global.__is_host = true
    global.__current_lobby_id = lobbyId
    global.__current_lobby_name = lobbyName
    global.__current_lobby_players = players
    room_goto(rRoom)
} else {
    // If the room is not created by us, update lobby rooms information
    if (objLobbyController.fetched) {
        map = ds_map_init(
            4,
            'id', lobbyId,
            'name', lobbyName,
            'players', players,
            'needPass', needPass
        )
        ds_list_add(objLobbyController.lobbies, map)
        objLobbyController.alarm[0] = 1
    }
}

