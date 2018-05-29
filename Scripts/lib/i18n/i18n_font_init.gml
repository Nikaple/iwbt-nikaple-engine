globalvar fontMsyh12, fontMsyh40;
var fontMsyh12cn, fontMsyh40cn, fontMsyh12jp, fontMsyh40jp, fontMsyh12en, fontMsyh40en;

if (global.useBuiltInDrawing) {
    fontMsyh12en = font12
    fontMsyh40en = font40
} else {
    fontMsyh12en = font_load('msyh.ttf', 12)
    fontMsyh40en = font_load('msyh.ttf', 40, true)
    fw_set_font_offset(fontMsyh12en, -1, -4)
    fw_set_font_offset(fontMsyh40en, -2, -8)
}

fw_set_encoding('shift_jis')
fontMsyh12jp = font_load('msyh.ttf', 12)
fontMsyh40jp = font_load('msyh.ttf', 40, true)
fw_set_font_offset(fontMsyh12jp, -1, -4)
fw_set_font_offset(fontMsyh40jp, -2, -8)

fw_set_encoding('gb2312')
fontMsyh12cn = font_load('msyh.ttf', 12)
fontMsyh40cn = font_load('msyh.ttf', 40, true)
fw_set_font_offset(fontMsyh12cn, -1, -4)
fw_set_font_offset(fontMsyh40cn, -2, -8)

fontMsyh12 = i18n_font_add(fontMsyh12cn, fontMsyh12en, fontMsyh12jp)
fontMsyh40 = i18n_font_add(fontMsyh40cn, fontMsyh40en, fontMsyh40jp)

i18n_draw_set_font(fontMsyh12)

