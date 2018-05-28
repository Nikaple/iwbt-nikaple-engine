// ns_leave_lobby(isSilent)
var isSilent, cmd;
isSilent = argument0

if (!ns_is_in_lobby()) {
    i18n_show('not_in_lobby')
    exit
}

cmd = cmd_init('leave_lobby')

if (isSilent) {
    cmd_add(
        cmd, 1,
        'isSilent', CMD_TRUE
    )
}

ns_send(cmd)

