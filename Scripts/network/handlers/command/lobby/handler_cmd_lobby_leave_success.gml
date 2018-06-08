if (room != rLobby && room != rRoom) exit

var data, _id, name, isHost;
data = argument0

_id = json_pick(data, 'id')
name = json_pick(data, 'name')
isHost = json_pick(data, 'isHost')

// in rRoom, guest left room, update lobby information
if (room == rRoom && is_string(name)) {
    debug(name + ' left the lobby.')
    if (name == ns_get_player_name()) {
        global.__current_lobby_id = 0
        room_goto(rLobby)
    } else {
        ds_list_remove(global.__current_lobby_players, name)
    }
}

// in rRoom, host left room, everybody leave room
if (room == rRoom && global.__current_lobby_id == _id && isHost) {
    debug('The host has left the lobby.')
    global.__current_lobby_id = 0
    room_goto(rLobby)
}

// in rLobby, player left room, update lobby rooms information
if (room == rLobby && objLobbyController.fetched) {
    var lobbies, size, i, lobby, players;
    lobbies = objLobbyController.lobbies
    size = ds_list_size(lobbies)
    for (i = 0; i < size; i += 1) {
        lobby = ds_list_find_value(lobbies, i)
        if (json_pick(lobby, 'id') == _id) {
            if (isHost) {
                debug('In room', _id, '. The host has left the lobby')
                players = json_pick(lobby, 'players')
                ds_list_destroy(players)
                ds_map_destroy(lobby)
                ds_list_remove(lobbies, lobby)
            } else {
                debug('In room', _id, '. Player', name, 'has left the lobby')
                ds_list_remove(json_pick(lobby, 'players'), name)
            }
            objLobbyController.alarm[0] = 1
            break
        }
    }
}

