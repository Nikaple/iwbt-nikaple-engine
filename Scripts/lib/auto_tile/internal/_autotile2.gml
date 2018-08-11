var bg, size, _depth, sep;
bg = argument0
size = set_default(argument1, 32)
_depth = set_default(argument2, 2000000)
sep = argument3
index = _autotile2_check(32)

tile_add(bg, 0, index * (size + sep), size, size, x, y, _depth)
