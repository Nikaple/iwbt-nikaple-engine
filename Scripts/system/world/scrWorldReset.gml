//if the game is not paused...
if (pauseon == false) {
    // restart function
    if (isInGameRoom()) {
        if (ns_is_online_mode() && resetWait && instance_exists(objResetWait)) {
            ns_send_wait('reset', room)
        } else if (ns_is_online_mode() && resetSync && instance_exists(objResetSync)) {
            ns_send_event('reset_sync', 1, 'scope', SCOPE_ALL)
        } else {
            // reset the game
            alarm[0] = 1
        }
    }
}

