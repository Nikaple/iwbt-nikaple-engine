var bg, size, _depth, index, sep, row;
bg = argument0
size = set_default(argument1, 16)
_depth = set_default(argument2, 2000000)
sep = argument3
row = set_default(argument4, 4)
obj = argument5
index = _autotile4_check(obj)

if (size == 32) {
    room_tile_add(room, bg, (index mod row) * (size + sep), (index div row) * (size + sep), size, size, x, y, _depth)
    tile_add(bg, (index mod row) * (size + sep), (index div row) * (size + sep), size, size, x, y, _depth)
} else {
    switch (index) {
        case 0:
            pos1 = 0
            pos2 = 2
            pos3 = 6
            pos4 = 8
            break
        case 1:
            pos1 = 3
            pos2 = 5
            pos3 = 6
            pos4 = 8
            break
        case 2:
            pos1 = 1
            pos2 = 2
            pos3 = 7
            pos4 = 8
            break
        case 3:
            pos1 = 4
            pos2 = 5
            pos3 = 7
            pos4 = 8
            break
        case 4:
            pos1 = 0
            pos2 = 1
            pos3 = 6
            pos4 = 7
            break
        case 5:
            pos1 = 3
            pos2 = 4
            pos3 = 6
            pos4 = 7
            break
        case 6:
            pos1 = 1
            pos2 = 1
            pos3 = 7
            pos4 = 7
            break
        case 7:
            pos1 = 4
            pos2 = 4
            pos3 = 7
            pos4 = 7
            break
        case 8:
            pos1 = 0
            pos2 = 2
            pos3 = 3
            pos4 = 5
            break
        case 9:
            pos1 = 3
            pos2 = 5
            pos3 = 3
            pos4 = 5
            break
        case 10:
            pos1 = 1
            pos2 = 2
            pos3 = 4
            pos4 = 5
            break
        case 11:
            pos1 = 4
            pos2 = 5
            pos3 = 4
            pos4 = 5
            break
        case 12:
            pos1 = 0
            pos2 = 1
            pos3 = 3
            pos4 = 4
            break
        case 13:
            pos1 = 3
            pos2 = 4
            pos3 = 3
            pos4 = 4
            break
        case 14:
            pos1 = 1
            pos2 = 1
            pos3 = 4
            pos4 = 4
            break
        case 15:
            pos1 = 4
            pos2 = 4
            pos3 = 4
            pos4 = 4
            break
    }
    room_tile_add(room, bg, (pos1 mod 3) * (size + sep), (pos1 div 3) * (size + sep), size, size, x, y, _depth)
    room_tile_add(room, bg, (pos2 mod 3) * (size + sep), (pos2 div 3) * (size + sep), size, size, x + size, y, _depth)
    room_tile_add(room, bg, (pos3 mod 3) * (size + sep), (pos3 div 3) * (size + sep), size, size, x, y + size, _depth)
    room_tile_add(room, bg, (pos4 mod 3) * (size + sep), (pos4 div 3) * (size + sep), size, size, x + size, y + size, _depth)
    tile_add(bg, (pos1 mod 3) * (size + sep), (pos1 div 3) * (size + sep), size, size, x, y, _depth)
    tile_add(bg, (pos2 mod 3) * (size + sep), (pos2 div 3) * (size + sep), size, size, x + size, y, _depth)
    tile_add(bg, (pos3 mod 3) * (size + sep), (pos3 div 3) * (size + sep), size, size, x, y + size, _depth)
    tile_add(bg, (pos4 mod 3) * (size + sep), (pos4 div 3) * (size + sep), size, size, x + size, y + size, _depth)
}
