if (room != rLobby) exit
if (ns_is_in_lobby()) exit

var data, lobbies, list, size, i;
data = argument0
lobbies = json_pick(data, 'lobbies')

objLobbyController.fetched = true
list = ds_list_create()
size = ds_list_size(lobbies)

for (i = 0; i < size; i += 1) {
    ds_list_add(list, _ns_fetch_map_clone(ds_list_find_value(lobbies, i)))
}

objLobbyController.fetched = true
objLobbyController.lobbies = list
objLobbyController.alarm[0] = 1

