// clone a map in handler `lobby_fetch_success`

var map, size, i, j, cur, newMap, val;
map = argument0
size = ds_map_size(map)
cur = ds_map_find_first(map)
newMap = ds_map_create()

for (i = 0; i < size; i += 1) {
    val = ds_map_find_value(map, cur)
    if (cur == 'players') {
        val = _ns_decode_player_list(val)
    }
    if (cur == 'name') {
        val = _ns_decode(val)
    }
    ds_map_add(newMap, cur, val)
    cur = ds_map_find_next(map, cur)
}

return newMap

