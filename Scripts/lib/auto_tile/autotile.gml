// autotile(directions, background, depth, size, seperation, row)

/// @param {Number} directions     2 or 4 or 8
/// @param {Number} background     The background resource to use as tile
/// @param {Number} size           Size of each tile
/// @param {Number} depth          The depth to draw the tiles
/// @param {Number} seperation     Seperation between tiles in background resource
/// @param {Number} row            Total amount of tiles in a row in background resource
/// @param {Object} obj            The object to check for collision

var tiled;
tiled = ds_map_exists(global.__autotile_visited_rooms, room)
if (tiled) exit;

var dir, bg, _depth, size, sep, row, obj;
dir = argument0
bg = argument1
size = argument2
_depth = argument3
sep = argument4
row = argument5
obj = argument6

switch(dir) {
    case 2:
        _autotile2(bg, size, _depth, sep, row, obj)
        break
    case 4:
        _autotile4(bg, size, _depth, sep, row, obj)
        break
    case 8:
        _autotile8(bg, size, _depth, sep, row, obj)
        break
}
