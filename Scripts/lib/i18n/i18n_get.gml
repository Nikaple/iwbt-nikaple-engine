// i18n_get(key)
var str

if (ds_map_exists(global.__i18n_map, argument0)) {
    str = json_get(global.__i18n_map, 2, argument0, global.language)
    if (is_string(str)) {
        if (str == '') {
            return argument0
        }
    } else {
        if (str == 0) {
            return argument0
        }
    }
} else {
    return argument0
}

