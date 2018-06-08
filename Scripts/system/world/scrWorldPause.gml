if (pauseon == true && view_angle[0] mod 180 == 0) {
    gameResume()
} else if (!ns_is_online_mode()) {
    gamePause()
}

