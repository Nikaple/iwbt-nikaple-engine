// i18n_draw_set_font(fontMap)
// fontMap is defined in script `i18n_font_init`

var font;
font = argument0

if (ds_map_exists(font, 'cn') && i18n_get_lang() == 'cn') {
    fw_draw_set_font(ds_map_find_value(font, 'cn'))
}
if (ds_map_exists(font, 'en') && i18n_get_lang() == 'en') {
    fw_draw_set_font(ds_map_find_value(font, 'en'))
}
if (ds_map_exists(font, 'jp') && i18n_get_lang() == 'jp') {
    fw_draw_set_font(ds_map_find_value(font, 'jp'))
}
