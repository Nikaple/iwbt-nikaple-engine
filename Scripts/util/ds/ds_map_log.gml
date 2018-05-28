// log a map

var str, map, cur, size;
str = '{'
map = argument0

cur = ds_map_find_first(map)
size = ds_map_size(map)

for (i = 0; i < size; i += 1) {
    str += string(cur)
    str += ': '
    str += string(json_pick(map, cur))
    if (i != size - 1) {
        str += ','
    }
    cur = ds_map_find_next(map, cur)
}

return str + '}'

