var bg, size, _depth, sep, tile;
bg = argument0
size = set_default(argument1, 32)
_depth = set_default(argument2, 2000000)
sep = argument3
row = argument4
obj = argument5
index = _autotile2_check(obj)

room_tile_add(room, bg, 0, index * (size + sep), size, size, x, y, _depth)
tile_add(bg, 0, index * (size + sep), size, size, x, y, _depth)

