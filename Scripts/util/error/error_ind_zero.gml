var type, name;
type = argument0
name = argument1

if (!global.enable_production_mode) {
    i18n_show_error(
        '当前工程中存在序号为 0 的 ' +
                type +
                ' 。为了修复这个问题，你可以将 ' +
                type +
                ' ' +
                name +
                ' 复制一份，将复制品改为原来的名字，并将原来的' +
                type + 
                '删除。如果你删除的是 object 或 sprite，也请顺便将老资源上的链接转移到新资源上（例如父对、精灵等。' + 
                '序号为 0 的' + 
                type + 
                '为：' + 
                name,
        type +
                ' of index 0 exists! This could cause unknown behaviors in game. ' +
                'To fix this, please duplicate the ' +
                type +
                ' ' +
                name + 
                ', rename it to the original name, delete the old one' +
                ', and make all relative resources link to the new one. (Object sprite, parent, etc.) ' + 
                'Index 0 of ' +
                type + 
                ' is: ' + 
                name
    )
}

