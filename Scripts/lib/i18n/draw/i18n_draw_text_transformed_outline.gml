var _x, _y, str, xs, ys, ang, back, front, col;
_x = argument0
_y = argument1
str = argument2
xs = argument3
ys = argument4
ang = argument5
back = argument6
front = argument7
col = draw_get_color()

back = c_black
front = c_white

i18n_draw_set_color(back)
i18n_draw_text_transformed(_x - 1, _y, str, xs, ys, ang)
i18n_draw_text_transformed(_x, _y - 1, str, xs, ys, ang)
i18n_draw_text_transformed(_x + 1, _y, str, xs, ys, ang)
i18n_draw_text_transformed(_x, _y + 1, str, xs, ys, ang)

i18n_draw_set_color(front)
i18n_draw_text_transformed(_x, _y, str, xs, ys, ang)

i18n_draw_set_color(col)
