///killPlayer();
//
//  make the player dead
//
//

if (global.god_mode) {
    music_play(sndDeath)
    exit
}
//when player isn't selecting difficulty
if (room != rSelectStage) {
    //create death effects
    instance_create(0, 0, objDeathSound)
    instance_create(player.x, player.y, bloodEmitter)
    instance_create(view_xview + 400, view_yview + 300, objGameover)
    //destroy the player and load game
    if (instance_exists(player)) {
        with (player) {
            instance_destroy()
        }
    }
    global.death += 1
    saveDeathTime()
    // make path spikes move along current speed & direction
    with (objTriggerable) {
        if (move && path_position != 1 && path_endaction == PATH_ACTION_STOP) {
            speed = path_speed
            path_end()
            move = false
        }
    }
    // this may happen in end step, so send the events in alarm
    objClient.alarm[0] = 1
} else {
    room_goto(rSelectStage)
    with (player) {
        instance_destroy()
    }
}

