// autotile(directions, background, depth, size, seperation, row)

/// @param {Number} directions     2 or 4 or 8
/// @param {Number} background     How many key-value pairs to append to the map ? Max is 7
/// @param {Number} depth          The depth to draw the tiles
/// @param {Number} size           Size of each tile
/// @param {Number} seperation     Seperation between tiles in background resource
/// @param {Number} row            Total amount of tiles in a row in background resource

var dir, bg, _depth, size, sep, row;
dir = argument0
bg = argument1
size = argument2
_depth = argument3
sep = argument4
row = argument5

switch(dir) {
    case 2:
        _autotile2(bg, size, _depth)
        break
    case 4:
        _autotile4(bg, size, _depth, sep, row)
        break
    case 8:
        _autotile8(bg, size, _depth, sep, row)
        break
}
