var data, dsPlayerInfo, droppedPlayer, inst;
data = argument0
droppedPlayer = json_pick(data, 'name')
dsPlayerInfo = objOnlinePlayers.dsPlayerInfo

i18n_show_message(i18n_get('player_dropped', droppedPlayer))

with (objOnlinePlayers) {
    inst = variable_local_get(droppedPlayer)
    if (inst != 0) {
        with (inst) {
            instance_destroy()
        }
        variable_local_set(droppedPlayer, 0)
    }
}

if (ds_map_exists(dsPlayerInfo, droppedPlayer)) {
    ds_map_delete(dsPlayerInfo, droppedPlayer)
}

