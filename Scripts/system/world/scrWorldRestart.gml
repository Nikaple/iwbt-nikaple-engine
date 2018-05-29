//if the game is not paused...
if (pauseon == false) {
    scrWorldStopDeathSound()
    // restart function
    if (isInGameRoom()) {
        if (resetWait && instance_exists(objResetWait)) {
            ns_send_event('reset_wait')
        } else if (resetSync && instance_exists(objResetSync)) {
            ns_send_event('reset_sync')
        } else {
            // reset the game
            alarm[0] = 1
        }
    }
}

