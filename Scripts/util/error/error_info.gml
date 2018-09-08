if (global.language == LANG_CN) {
    return '详见：https://www.nikaple.com/engine/#/（在左上角搜索相关信息）。（在房间 ' +
        room_get_name(room) +
        ' 中，位于 (' +
        string(x) +
        ', ' +
        string(y) +
        ') 的 Object ' +
        object_get_name(id.object_index) +
        ' 发生了一个错误，id: ' +
        string(id) +
        '）。'
} else {
    return 'Error info: Current room: ' +
        room_get_name(room) +
        ', object name: ' +
        object_get_name(id.object_index) +
        ', id: ' +
        string(id) +
        ', position: (' +
        string(x) +
        ', ' +
        string(y) +
        ').'
}

