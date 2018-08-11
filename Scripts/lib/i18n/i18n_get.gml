// i18n_get(key)

//if (!global.enable_internationalization) return argument0;

var strMap, str, key, i;
key = argument0

if (is_real(argument0)) {
    return string(argument0)
}

if (ds_map_exists(global.__i18n_map, key)) {
    strMap = ds_map_find_value(global.__i18n_map, key)
    if (ds_map_exists(strMap, global.language)) {
        str = ds_map_find_value(strMap, global.language)
        for (i = 0; i < global.__i18n_max_placeholders; i += 1) {
            str = string_replace(str, '${' + string(i) + '}', string(argument[i + 1]))
        }
        return str
    } else {
        return key
    }
} else {
    return key
}

