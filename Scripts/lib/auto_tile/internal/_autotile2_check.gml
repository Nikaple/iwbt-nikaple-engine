/*
    Returns the tile index after checking 2 positions around the tile.
*/

var index, obj;
obj = objVisibleTile

// query cache
if (ds_map_exists(global.__autotile_block_index_map, id) && global.__autotile_use_cache) {
    return ds_map_find_value(global.__autotile_block_index_map, id)
}

if (!collision_point(x, y - 1, obj, false, true) && y mod view_hview[view_current] != 0) {
    index = 0
} else {
    index = 1
}

// cache index
if (global.__autotile_use_cache) {
    ds_map_add(global.__autotile_block_index_map, id, index)
}

return index

