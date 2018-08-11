ds_map_destroy(global.__autotile_map)
if (global.__autotile_use_cache) {
    ds_map_destroy(global.__autotile_block_index_map)
}
