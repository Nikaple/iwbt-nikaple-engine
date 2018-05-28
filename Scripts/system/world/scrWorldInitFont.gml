fw_init()

globalvar fontMsyh12, fontMsyh40;
fontMsyh12 = font_load("msyh.ttf", 12)
fontMsyh40 = font_load("msyh.ttf", 40, true)

fw_set_font_offset(fontMsyh12, -1, -4)
fw_set_font_offset(fontMsyh40, -2, -8)

i18n_draw_set_font(font12, fontMsyh12)
