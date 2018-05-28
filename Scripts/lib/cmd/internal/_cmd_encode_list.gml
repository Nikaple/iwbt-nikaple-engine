// _cmd_encode_list(ds_list_id, not_destroy)

var map, isMap, size, i, result, value, current, keyMap, not_destroy;
map = argument0
not_destroy = argument1
result = '['
keyMap = ds_map_create()

if (!not_destroy) {
    ds_map_delete(map, CMD_LIST)
}

size = ds_map_size(map)
current = ds_map_find_first(map)

for (i = 0; i < size; i += 1) {
    key = _cmd_extract_key(current)
    if (key != '') {
        if (!not_destroy) {
            ds_map_delete(map, current)
        }
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
        result += _cmd_encode_map(value, not_destroy)
    } else {
        // it's primitive !
        result += _cmd_encode_primitive(value)
    }
    if (i != size - 1) {
        result += ','
    }
    current = ds_map_find_next(map, current)
}

if (!not_destroy) {
    ds_map_destroy(keyMap)
    ds_map_destroy(map)
}

return result + ']'

