// _cmd_encode_map(ds_map_id, not_destroy)

var map, size, current, list, i, key, isList, result, keyMap, not_destroy;

map = argument0
not_destroy = argument1
isList = ds_map_find_value(map, CMD_LIST)

if (isList) {
    // it's a list!
    return _cmd_encode_list(map, not_destroy)
}

// it's a map!
result = '{'
keyMap = ds_map_create()
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

current = ds_map_find_first(map)

size = ds_map_size(map)

for (i = 0; i < size; i += 1) {
    if (is_real(current) && !global.enable_production_mode) {
        i18n_show_error(
            '在使用联机功能时，键值对（ds_map）的键（key）必须为字符串，请仔细检查参数。当前键为：' +
                string(current) +
                '当前键值对为：' +
                ds_map_log(map),
            "You should always use string in a ds_map's key! Your current key is: " + 
                string(current) +
                ', Current map: ' +
                ds_map_log(map) +
                '.'
        )
    }
    result += '"' + current + '":'
    if (ds_map_find_value(keyMap, current)) {
        // it's a ds_map !
        result += _cmd_encode_map(ds_map_find_value(map, current), not_destroy)
    } else {
        // it's primitive !
        result += _cmd_encode_primitive(ds_map_find_value(map, current))
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

return result + '}'

