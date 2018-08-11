globalvar fontMsyh12, fontMsyh24, fontMsyh40;
var fontMsyh12cn, fontMsyh24cn, fontMsyh40cn;
var fontMsyh12jp, fontMsyh24jp, fontMsyh40jp;
var fontMsyh12en, fontMsyh24en, fontMsyh40en;

if (global.enable_builtin_drawing && !global.enable_internationalization) {
    fontMsyh12en = fontArial12
    fontMsyh24en = fontArial24
    fontMsyh40en = fontArial40
}

if (global.enable_internationalization) {
    fontMsyh12cn = i18n_font_load('msyh.ttf', 12)
    fontMsyh24cn = i18n_font_load('msyh.ttf', 24, true)
    fontMsyh40cn = i18n_font_load('msyh.ttf', 40, true)
    fw_set_font_offset(fontMsyh12cn, -1, -4)
    fw_set_font_offset(fontMsyh12cn, -1, -6)
    fw_set_font_offset(fontMsyh40cn, -2, -8)
    fontMsyh12en = fontMsyh12cn
    fontMsyh24en = fontMsyh24cn
    fontMsyh40en = fontMsyh40cn
    fontMsyh12jp = fontMsyh12cn
    fontMsyh24jp = fontMsyh24cn
    fontMsyh40jp = fontMsyh40cn
}

fontMsyh12 = i18n_font_add(fontMsyh12cn, fontMsyh12en, fontMsyh12jp)
fontMsyh24 = i18n_font_add(fontMsyh24cn, fontMsyh24en, fontMsyh24jp)
fontMsyh40 = i18n_font_add(fontMsyh40cn, fontMsyh40en, fontMsyh40jp)

i18n_draw_set_font(fontMsyh12)

