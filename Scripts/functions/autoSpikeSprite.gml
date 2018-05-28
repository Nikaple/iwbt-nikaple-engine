// set the spike sprite automatically, used in playerKiller Create Event

if (global.auto_spike_sprite) {
    switch (room) {
        case rTraps:
            spikeSprite(sprGreenSpikeM)
            break
        //add code here
        default:
            spikeSprite(sprSpikeM, sprMiniSpikeM)
            break
    }
}

