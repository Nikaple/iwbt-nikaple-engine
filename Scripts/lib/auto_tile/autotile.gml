// autotile(directions, background, depth, size, seperation, row)

/// @param {Number} directions     2 or 4 or 8
/// @param {Number} background     The background resource to use as tile
/// @param {Number} size           Size of each tile
/// @param {Number} depth          The depth to draw the tiles
/// @param {Number} seperation     Seperation between tiles in background resource
/// @param {Number} row            Total amount of tiles in a row in background resource

if (tiled) exit;

tiled = true

var dir, bg, _depth, size, sep, row;
dir = argument0
bg = argument1
size = argument2
_depth = argument3
sep = argument4
row = argument5

switch(dir) {
    case 2:
        _autotile2(bg, size, _depth, sep)
        break
    case 4:
        _autotile4(bg, size, _depth, sep, row)
        break
    case 8:
        _autotile8(bg, size, _depth, sep, row)
        break
}
