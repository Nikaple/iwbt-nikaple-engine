///killPlayer();
//
//  make the player dead
//
//
{
    if (global.god_mode) {
        audio_playsound(sndDeath)
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
        ns_send_event('player_death')
    } else {
        room_goto(rSelectStage)
        with (player) {
            instance_destroy()
        }
    }
}

