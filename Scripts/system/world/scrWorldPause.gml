if (pauseon == true && view_angle[0] mod 180 == 0) {
    gameResume()
} else if (global.stream_music == false || getBossRoom() == false) {
    gamePause()
}

