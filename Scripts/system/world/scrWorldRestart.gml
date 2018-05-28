//if the game is not paused...
if (pauseon == false) {
    scrWorldStopDeathSound()
    // restart function
    if (
        room != rInit &&
        room != rTitle &&
        room != rMenu &&
        room != rSelectStage &&
        room != rOptions &&
        room != rLobby
    ) {
        //make up for the frame that player presses 'R'
        if (resetSync && instance_exists(objResetSyncRoom)) {
            ns_send_event('reset_wait')
        } else {
            // reset the game
            alarm[0] = 1
        }
    }
}

