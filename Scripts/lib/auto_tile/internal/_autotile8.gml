var bg, size, _depth, index;
bg = argument0
size = set_default(argument1, 16)
_depth = 2000000
sep = argument3
row = set_default(argument4, 8)
obj = argument5
index = _autotile8_check(obj)

if (size == 32) {
    room_tile_add(room, bg, (index mod row) * (size + sep), (index div row) * (size + sep), size, size, x, y, _depth)
    tile_add(bg, (index mod row) * (size + sep), (index div row) * (size + sep), size, size, x, y, _depth)
} else {
    switch (index) {
        case 0:
            pos1 = 0
            pos2 = 1
            pos3 = 6
            pos4 = 7
            break

        case 1:
            pos1 = 0
            pos2 = 2
            pos3 = 3
            pos4 = 5
            break

        case 2:
            pos1 = 0
            pos2 = 1
            pos3 = 3
            pos4 = 4
            break

        case 3:
            pos1 = 1
            pos2 = 2
            pos3 = 4
            pos4 = 5
            break

        case 4:
            pos1 = 0
            pos2 = 1
            pos3 = 3
            pos4 = 13
            break

        case 5:
            pos1 = 1
            pos2 = 2
            pos3 = 12
            pos4 = 5
            break

        case 6:
            pos1 = 4
            pos2 = 5
            pos3 = 4
            pos4 = 5
            break

        case 7:
            pos1 = 4
            pos2 = 4
            pos3 = 7
            pos4 = 7
            break

        case 8:
            pos1 = 3
            pos2 = 5
            pos3 = 6
            pos4 = 8
            break

        case 9:
            pos1 = 1
            pos2 = 2
            pos3 = 7
            pos4 = 8
            break

        case 10:
            pos1 = 3
            pos2 = 4
            pos3 = 6
            pos4 = 7
            break

        case 11:
            pos1 = 4
            pos2 = 5
            pos3 = 7
            pos4 = 8
            break

        case 12:
            pos1 = 3
            pos2 = 10
            pos3 = 6
            pos4 = 7
            break

        case 13:
            pos1 = 9
            pos2 = 5
            pos3 = 7
            pos4 = 8
            break

        case 14:
            pos1 = 1
            pos2 = 1
            pos3 = 4
            pos4 = 4
            break

        case 15:
            pos1 = 3
            pos2 = 4
            pos3 = 3
            pos4 = 4
            break

        case 16:
            pos1 = 3
            pos2 = 10
            pos3 = 3
            pos4 = 13
            break

        case 17:
            pos1 = 1
            pos2 = 1
            pos3 = 12
            pos4 = 13
            break

        case 18:
            pos1 = 4
            pos2 = 10
            pos3 = 4
            pos4 = 13
            break

        case 19:
            pos1 = 4
            pos2 = 4
            pos3 = 12
            pos4 = 13
            break

        case 20:
            pos1 = 4
            pos2 = 4
            pos3 = 4
            pos4 = 13
            break

        case 21:
            pos1 = 4
            pos2 = 4
            pos3 = 12
            pos4 = 4
            break

        case 22:
            pos1 = 4
            pos2 = 10
            pos3 = 12
            pos4 = 13
            break

        case 23:
            pos1 = 9
            pos2 = 4
            pos3 = 12
            pos4 = 13
            break

        case 24:
            pos1 = 9
            pos2 = 10
            pos3 = 7
            pos4 = 7
            break

        case 25:
            pos1 = 9
            pos2 = 5
            pos3 = 12
            pos4 = 5
            break

        case 26:
            pos1 = 9
            pos2 = 10
            pos3 = 4
            pos4 = 4
            break

        case 27:
            pos1 = 9
            pos2 = 4
            pos3 = 12
            pos4 = 4
            break

        case 28:
            pos1 = 4
            pos2 = 10
            pos3 = 4
            pos4 = 4
            break

        case 29:
            pos1 = 9
            pos2 = 4
            pos3 = 4
            pos4 = 4
            break

        case 30:
            pos1 = 9
            pos2 = 10
            pos3 = 4
            pos4 = 13
            break

        case 31:
            pos1 = 9
            pos2 = 10
            pos3 = 12
            pos4 = 4
            break

        case 32:
            pos1 = 9
            pos2 = 5
            pos3 = 4
            pos4 = 5
            break

        case 33:
            pos1 = 4
            pos2 = 10
            pos3 = 7
            pos4 = 7
            break

        case 34:
            pos1 = 4
            pos2 = 5
            pos3 = 12
            pos4 = 5
            break

        case 35:
            pos1 = 9
            pos2 = 4
            pos3 = 7
            pos4 = 7
            break

        case 36:
            pos1 = 9
            pos2 = 4
            pos3 = 4
            pos4 = 13
            break

        case 37:
            pos1 = 4
            pos2 = 10
            pos3 = 12
            pos4 = 4
            break

        case 38:
            pos1 = 9
            pos2 = 10
            pos3 = 12
            pos4 = 13
            break

        case 39:
            pos1 = 0
            pos2 = 2
            pos3 = 6
            pos4 = 8
            break
        case 40:
            pos1 = 1
            pos2 = 1
            pos3 = 12
            pos4 = 4
            break

        case 41:
            pos1 = 3
            pos2 = 4
            pos3 = 3
            pos4 = 13
            break

        case 42:
            pos1 = 1
            pos2 = 1
            pos3 = 4
            pos4 = 13
            break

        case 43:
            pos1 = 3
            pos2 = 10
            pos3 = 3
            pos4 = 4
            break

        case 44:
            pos1 = 1
            pos2 = 1
            pos3 = 7
            pos4 = 7
            break

        case 45:
            pos1 = 3
            pos2 = 5
            pos3 = 3
            pos4 = 5
            break

        case 46:
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
    tile_add(bgMetal, (pos4 mod 3) * (size + sep), (pos4 div 3) * (size + sep), size, size, x + size, y + size, _depth)
}
