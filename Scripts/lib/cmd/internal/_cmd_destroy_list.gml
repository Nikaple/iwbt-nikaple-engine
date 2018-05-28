// _cmd_encode_list(ds_list_id, not_destroy)

var map, isMap, size, i, value, current, keyMap;
map = argument0
keyMap = ds_map_create()

ds_map_delete(map, CMD_LIST)

size = ds_map_size(map)
current = ds_map_find_first(map)

for (i = 0; i < size; i += 1) {
    key = _cmd_extract_key(current)
    if (key != '') {
        ds_map_delete(map, current)
        ds_map_add(keyMap, key, true)
    }
    current = ds_map_find_next(map, current)
}

size = ds_map_size(map)
current = ds_map_find_first(map)

for (i = 0; i < size; i += 1) {
    value = ds_map_find_value(map, string(i))
    if (ds_map_find_value(keyMap, current)) {
        // it's a ds_map !
        result += _cmd_destroy_map(value)
    }
    current = ds_map_find_next(map, current)
}

ds_map_destroy(keyMap)
ds_map_destroy(map)

