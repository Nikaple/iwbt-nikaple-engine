var x1, y1, x2, y2, width, i;
x1 = argument0
y1 = argument1
x2 = argument2
y2 = argument3
width = argument4

for (i = 0; i < width; i += 1) {
    draw_rectangle(x1 + i, y1 + i, x2 - i, y2 - i, 1)
}

