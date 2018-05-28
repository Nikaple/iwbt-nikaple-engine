// _cmd_encode_map(ds_map_id, not_destroy)

var map, size, current, list, i, key, isList, keyMap;

map = argument0
isList = ds_map_find_value(map, CMD_LIST)

if (isList) {
    // it's a list!
    return _cmd_encode_list(map, not_destroy)
}

// it's a map!
keyMap = ds_map_create()

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

current = ds_map_find_first(map)
size = ds_map_size(map)
for (i = 0; i < size; i += 1) {
    if (is_real(current)) {
        show_error("You should always use string in a ds_map's key! Your current key is: " + string(current), 0)
    }
    if (ds_map_find_value(keyMap, current)) {
        // it's a ds_map !
        _cmd_destroy_map(ds_map_find_value(map, current))
    }
    current = ds_map_find_next(map, current)
}

ds_map_destroy(keyMap)
ds_map_destroy(map)

