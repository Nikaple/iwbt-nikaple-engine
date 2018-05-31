if (pauseon == true && view_angle[0] mod 180 == 0) {
    gameResume()
} else if (!global.stream_music && !isBossRoom() && !ns_is_online_mode()) {
    gamePause()
}

