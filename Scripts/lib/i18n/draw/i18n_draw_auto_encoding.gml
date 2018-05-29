// This script is used in `effect_parent` draw event,
// which sets the encoding to current language.

// As GameMaker executes your code by the encoding of the computer,
// it's necessary to set the correct encoding before drawing anything.
// This gmk was coded on a system of Simplified Chinese, so the source
// code is encoded with `gb2312`. That is to say, I have to choose
// `gb2312` to decode my gmk.

// If you're in Japan, change `gb2312` to `shift-jis`

switch(i18n_get_lang()) {
    case 'cn':
        fw_set_encoding('gb2312')
        break
    case 'en':
        fw_set_encoding('utf-8')
        break
    case 'jp':
        fw_set_encoding('gb2312')
        break
    default:
        fw_set_encoding('utf-8')
        break
}

