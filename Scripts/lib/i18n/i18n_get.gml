// i18n_get(key)
var strMap, str, key; 
key = argument0

if (ds_map_exists(global.__i18n_map, key)) {
    strMap = json_pick(global.__i18n_map, key)
    if (ds_map_exists(strMap, global.language)) {
        str = json_pick(strMap, global.language)
        return str
    } else {
        return key
    }
} else {
    return key
}

