/*
    Returns the tile index after checking 2 positions around the tile.
*/

var index, obj, key, col;
obj = set_default(argument0, objVisibleTile)
key = string(id) + string(room)

// query cache
index = _autotile_read_cache()
if (index != -1) {
    return index;
}

col = collision_point(x, y - 1, obj, false, true)

if ((!col || autotile_exclude(col)) && y mod view_hview[view_current] != 0) {
    index = 0
} else {
    index = 1
}

// cache index
_autotile_write_cache(index)

return index

