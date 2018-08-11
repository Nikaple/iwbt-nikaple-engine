/*
    Returns the tile index after checking 4 positions around the tile.
    Do not includes corners.
*/

var index, obj, key, col;
obj = objVisibleTile
key = string(id) + string(room)

// query cache
// query cache
index = _autotile_read_cache()
if (index != -1) {
    return index;
}


// optimized collision checking
if (!north_tile_checked) {
    col = collision_point(x, y - 1, obj, false, true)
    north_tile = col && !autotile_exclude(col)
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
    col = collision_point(x, y + 32, obj, false, true)
    south_tile = col && !autotile_exclude(col)
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
    col = collision_point(x - 1, y, obj, false, true)
    west_tile = col && !autotile_exclude(col)
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
    col = collision_point(x + 32, y, obj, false, true)
    east_tile = col && !autotile_exclude(col)
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
_autotile_write_cache(index)

return index

