// i18n_get(key)

if (ds_map_exists(global.__i18n_map, argument0)) {
    return json_get(global.__i18n_map, 2, argument0, global.language)
} else {
    return argument0
}

