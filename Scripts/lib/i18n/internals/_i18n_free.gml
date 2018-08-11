var size, current, i, key;

size = ds_map_size(global.__i18n_map)
current = ds_map_find_first(global.__i18n_map)

for (i = 0; i < size; i += 1) {
    ds_map_destroy(json_pick(global.__i18n_map, current))
    current = ds_map_find_next(global.__i18n_map, current)
}

ds_map_destroy(global.__i18n_map)

fw_cleanup()

