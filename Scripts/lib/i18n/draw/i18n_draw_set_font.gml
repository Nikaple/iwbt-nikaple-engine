// i18n_draw_set_font(fontMap)
// fontMap is defined in script `i18n_font_init`

var font;
font = argument0

if (ds_map_exists(font, LANG_CN) && i18n_get_lang() == LANG_CN) {
    fw_draw_set_font(ds_map_find_value(font, LANG_CN))
}
if (ds_map_exists(font, LANG_EN) && i18n_get_lang() == LANG_EN) {
    fw_draw_set_font(ds_map_find_value(font, LANG_EN))
}
if (ds_map_exists(font, LANG_JP) && i18n_get_lang() == LANG_JP) {
    fw_draw_set_font(ds_map_find_value(font, LANG_JP))
}
