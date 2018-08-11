// set the spike sprite automatically, used in playerKiller Create Event

if (global.enable_auto_spike_sprite) {
    switch (room) {
        case rTraps:
            spikeSprite(sprCyanSpikeM)
            break
        case rOnlineSpike:
            spikeSprite(sprCyanSpikeM)
            break
        //add code here
        default:
            break
    }
}

