// i18n_draw_set_font(fontMap)

var font, fontCN, fontEN, fontJP;
font = argument0
fontCN = json_pick(fontMap, 'cn')
fontEN = json_pick(fontMap, 'en')
fontJP = json_pick(fontMap, 'jp')

switch(i18n_get_lang()) {
    case 'cn':
        fw_draw_set_font(fontCN)
        break
    case 'en':
        fw_draw_set_font(fontEN)
        break
    case 'jp':
        fw_draw_set_font(fontJP)
        break
    default:
        break
}
