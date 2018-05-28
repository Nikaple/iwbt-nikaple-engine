// i18n_add(key, cn, en)
var key, cn, en, map;
key = argument0
cn = argument1
en = argument2

map = ds_map_init(2, 'cn', cn, 'en', en)
ds_map_add(global.__i18n_map, key, map)
