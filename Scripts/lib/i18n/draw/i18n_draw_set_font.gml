// i18n_draw_set_font(enFont, cnFont)

var enFont, cnFont;
enFont = argument0
cnFont = argument1

if (!cnFont) {
    cnFont = fontMsyh12
}

fw_draw_set_font(cnFont)
draw_set_font(enFont)

