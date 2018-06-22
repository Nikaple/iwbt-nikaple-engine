/*
    Returns the tile index after checking all 8 positions around the tile.
    Includes corners.
*/

// query cache
if (ds_map_exists(global.__autotile_block_index_map, id) && global.__autotile_use_cache) {
    return ds_map_find_value(global.__autotile_block_index_map, id)
}

var index, obj;
obj = objVisibleTile

//Directional Check, including corners, returns Boolean
/*
north_tile = !!collision_point(x, y - 1, obj, false, true)
south_tile = !!collision_point(x, y + 32, obj, false, true)
west_tile = !!collision_point(x - 1, y, obj, false, true)
east_tile = !!collision_point(x + 32, y, obj, false, true)
north_west_tile =
    !!collision_point(x - 1, y - 1, obj, false, true) && west_tile && north_tile
north_east_tile =
    !!collision_point(x + 32, y - 1, obj, false, true) && north_tile && east_tile
south_west_tile =
    !!collision_point(x - 1, y + 32, obj, false, true) && south_tile && west_tile
south_east_tile =
    !!collision_point(x + 32, y + 32, obj, false, true) && south_tile && east_tile
*/

// optimized collision checking

if (!north_tile_checked) {
    north_tile = collision_point(x, y - 1, obj, false, true)
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
    if (east_tile) {
        east_tile.west_tile = 1
        east_tile.west_tile_checked = true
        east_tile = 1
    } else {
        east_tile = 0
    }
}

if (!north_west_tile_checked) {
    north_west_tile = collision_point(x - 1, y - 1, obj, false, true)
    north_west_tile_checked = true
    if (north_west_tile) {
        north_west_tile.south_east_tile = 1
        north_west_tile.south_east_tile_checked = true
        north_west_tile = west_tile && north_tile
    } else {
        north_west_tile = 0
    }
} else {
    north_west_tile = north_west_tile && west_tile && north_tile
}

if (!north_east_tile_checked) {
    north_east_tile = collision_point(x + 32, y - 1, obj, false, true)
    north_east_tile_checked = true
    if (north_east_tile) {
        north_east_tile.south_west_tile = 1
        north_east_tile.south_west_tile_checked = true
        north_east_tile = north_tile && east_tile
    } else {
        north_east_tile = 0
    }
} else {
    north_east_tile = north_east_tile && north_tile && east_tile
}

if (!south_west_tile_checked) {
    south_west_tile = collision_point(x - 1, y + 32, obj, false, true)
    south_west_tile_checked = true
    if (south_west_tile) {
        south_west_tile.north_east_tile = 1
        south_west_tile.north_east_tile_checked = true
        south_west_tile = south_tile && west_tile
    } else {
        south_west_tile = 0
    }
} else {
    south_west_tile = south_west_tile && south_tile && west_tile
}

if (!south_east_tile_checked) {
    south_east_tile = collision_point(x + 32, y + 32, obj, false, true)
    south_east_tile_checked = true
    if (south_east_tile) {
        south_east_tile.north_west_tile = 1
        south_east_tile.north_west_tile_checked = true
        south_east_tile = south_tile && east_tile
    } else {
        south_east_tile = 0
    }
} else {
    south_east_tile = south_east_tile && south_tile && east_tile
}

//8 bit Bitmasking calculation using Directional check booleans values
index =
    north_west_tile +
    2 * north_tile +
    4 * north_east_tile +
    8 * west_tile +
    16 * east_tile +
    32 * south_west_tile +
    64 * south_tile +
    128 * south_east_tile

// take the previously calculated value and find the relevant value in the data structure to remove redundancies
if (ds_map_exists(global.__autotile_map, index)) {
    index = ds_map_find_value(global.__autotile_map, index)
    // cache index
    if (global.__autotile_use_cache) {
        ds_map_add(global.__autotile_block_index_map, id, index)
    }
}

return index

