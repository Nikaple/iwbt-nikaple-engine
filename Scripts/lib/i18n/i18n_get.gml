// i18n_get(key)
var strMap, str, key, i;
key = argument0

if (ds_map_exists(global.__i18n_map, key)) {
    strMap = json_pick(global.__i18n_map, key)
    if (ds_map_exists(strMap, global.language)) {
        str = json_pick(strMap, global.language)
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

