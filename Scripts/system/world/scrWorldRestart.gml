//if the game is not paused...
if (pauseon == false) {
    scrWorldStopDeathSound()
    // restart function
    if (isInGameRoom()) {
        if (resetWait && instance_exists(objResetWait)) {
            ns_send_wait('reset', room)
        } else if (resetSync && instance_exists(objResetSync)) {
            ns_send_event('reset_sync', 1, 'scope', 'all')
        } else {
            // reset the game
            alarm[0] = 1
        }
    }
}

