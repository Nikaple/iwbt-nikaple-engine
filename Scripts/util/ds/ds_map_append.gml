/// ds_map_append(id, kvCount, k1, v1, k2, v2, ..., kn, vn), kvCount <= 7

// quickly append to a map

var map, i, kvCount;
map = argument0
kvCount = argument1

for (i = 0; i < kvCount; i += 1) {
    ds_map_add(map, argument[i * 2 + 2], argument[i * 2 + 3])
}

return map

