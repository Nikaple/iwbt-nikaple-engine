globalvar fontMsyh12, fontMsyh40;
var fontMsyh12cn, fontMsyh40cn, fontMsyh12jp, fontMsyh40jp, fontMsyh12en, fontMsyh40en;

fontMsyh12cn = i18n_font_load('msyh.ttf', 12)
fontMsyh40cn = i18n_font_load('msyh.ttf', 40, true)
fw_set_font_offset(fontMsyh12cn, -1, -4)
fw_set_font_offset(fontMsyh40cn, -2, -8)

// You can use other fonts by calling font_load
fontMsyh12jp = fontMsyh12cn
fontMsyh40jp = fontMsyh40cn

if (global.use_builtin_drawing) {
    fontMsyh12en = font12
    fontMsyh40en = font40
} else {
    fontMsyh12en = fontMsyh12cn
    fontMsyh40en = fontMsyh40cn
}

fontMsyh12 = i18n_font_add(fontMsyh12cn, fontMsyh12en, fontMsyh12jp)
fontMsyh40 = i18n_font_add(fontMsyh40cn, fontMsyh40en, fontMsyh40jp)

i18n_draw_set_font(fontMsyh12)

