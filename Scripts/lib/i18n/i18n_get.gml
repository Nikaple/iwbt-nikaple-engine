// i18n_get(key)
var strMap, str, key, i;
key = argument0

if (ds_map_exists(global.__i18n_map, key)) {
    strMap = ds_map_find_value(global.__i18n_map, key)
    if (ds_map_exists(strMap, global.language)) {
        str = ds_map_find_value(strMap, global.language)
        for (i = 1; i <= global.__i18n_max_placeholders; i += 1) {
            str = string_replace(str, '${' + string(i - 1) + '}', string(argument[i]))
        }
        return str
    } else {
        return key
    }
} else {
    return key
}

