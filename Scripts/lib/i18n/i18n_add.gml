// i18n_add(key, cn, en, jp)
var key, cn, en, jp, map;
key = argument0
cn = argument1
en = argument2
jp = argument3

map = ds_map_init(3, 'cn', cn, 'en', en, 'jp', jp)
ds_map_add(global.__i18n_map, key, map)
