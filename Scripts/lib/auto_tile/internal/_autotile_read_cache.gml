var key;
key = string(id) + string(room)

if (ds_map_exists(global.__autotile_block_index_map, key) && global.__autotile_use_cache) {
    return ds_map_find_value(global.__autotile_block_index_map, key)
}

return -1;
