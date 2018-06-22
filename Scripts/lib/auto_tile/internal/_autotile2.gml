var bg, size, _depth;
bg = argument0
size = set_default(argument1, 32)
_depth = set_default(argument2, 2000000)
index = _autotile2_check(32)

tile_add(bg, 0, 0 + index * size, size, size, x, y, _depth)
