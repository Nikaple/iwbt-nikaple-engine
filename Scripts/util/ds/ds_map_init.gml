/// ds_map_init(kvCount, k1, v1, k2, v2, ..., kn, vn), kvCount <= 7

// quickly initialize a map

var map, i, kvCount;
map = ds_map_create()
kvCount = argument0

for (i = 0; i < kvCount; i += 1) {
    ds_map_add(map, argument[i * 2 + 1], argument[i * 2 + 2])
}

return map

