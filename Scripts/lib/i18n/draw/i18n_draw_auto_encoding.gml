// This script is used in `effect_parent` draw event,
// which sets the encoding to current language.

switch(i18n_get_lang()) {
    case 'cn':
        fw_set_encoding('gb2312')
        break
    case 'en':
        fw_set_encoding('utf-8')
        break
    case 'jp':
        fw_set_encoding('shift_jis')
        break
    default:
        fw_set_encoding('utf-8')
        break
}

