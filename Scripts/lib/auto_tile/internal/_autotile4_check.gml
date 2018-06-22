/*
    Returns the tile index after checking 4 positions around the tile.
    Do not includes corners.
*/

// query cache
if (ds_map_exists(global.__autotile_block_index_map, id) && global.__autotile_use_cache) {
    return ds_map_find_value(global.__autotile_block_index_map, id)
}

var index, obj;
obj = objVisibleTile

// Directional check
/*north_tile = !!collision_point(x, y - 1, objVisibleTile, false, true)
south_tile = !!collision_point(x, y + 32, objVisibleTile, false, true)
west_tile = !!collision_point(x - 1, y, objVisibleTile, false, true)
east_tile = !!collision_point(x + 32, y, objVisibleTile, false, true)
*/

// optimized collision checking
if (!north_tile_checked) {
    north_tile = collision_point(x, y - 1, obj, false, true)
    north_tile_checked = true
    if (north_tile) {
        north_tile.south_tile = 1
        north_tile.south_tile_checked = true
        north_tile = 1
    } else {
        north_tile = 0
    }
}

if (!south_tile_checked) {
    south_tile = collision_point(x, y + 32, obj, false, true)
    south_tile_checked = true
    if (south_tile) {
        south_tile.north_tile = 1
        south_tile.north_tile_checked = true
        south_tile = 1
    } else {
        south_tile = 0
    }
}

if (!west_tile_checked) {
    west_tile = collision_point(x - 1, y, obj, false, true)
    west_tile_checked = true
    if (west_tile) {
        west_tile.east_tile = 1
        west_tile.east_tile_checked = true
        west_tile = 1
    } else {
        west_tile = 0
    }
}

if (!east_tile_checked) {
    east_tile = collision_point(x + 32, y, obj, false, true)
    east_tile_checked = true
    if (east_tile) {
        east_tile.west_tile = 1
        east_tile.west_tile_checked = true
        east_tile = 1
    } else {
        east_tile = 0
    }
}

//perform 4 bit Bitmasking calculation
index = north_tile + 2 * west_tile + 4 * east_tile + 8 * south_tile
// cache index
if (global.__autotile_use_cache) {
    ds_map_add(global.__autotile_block_index_map, id, index)
}
return index

