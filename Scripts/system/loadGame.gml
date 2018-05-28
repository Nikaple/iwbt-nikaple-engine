{
    if (!instance_exists(player)) {
        instance_create(0, 0, player)
    }
    // clear fakePlayer speed
    if (objOnlinePlayers.dsPlayerInfo) {
        var size, i, info, _player;
        info = objOnlinePlayers.dsPlayerInfo
        size = ds_map_size(info)
        _player = ds_map_find_first(info)
        for (i = 0; i < size; i += 1) {
            with (objOnlinePlayers) {
                fakePlayer = variable_local_get(
                    ds_map_find_value(info, _player)
                )
                fakePlayer.h = 0
                fakePlayer.v = 0
            }
            _player = ds_map_find_next(info, _player)
        }
    }
    //load game
    saveExe()
}

